//
//  OneBigButton.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct OneBigButton: View {
    let image: String
    let one: String
    let two: String
    let action: () -> Void
    
//    init(image: String,_ text: String,_ textTwo: String) {
//        self.image = image
//        self.text = text
//        self.textTwo = textTwo
//    }
    
    var body: some View {
        Button(action: { action() }, label: {
            VStack {
                Image(systemName: image)
                    .font(.system(size: UIScreen.main.bounds.height > 750 ? 50 : 30))
                    .foregroundColor(.redApp)
                    .padding()
                VStack {
                    Text(one)
                    Text(two)
                }
                .font(.title2)
                .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        })
    }
}

struct OneBigButton_Previews: PreviewProvider {
    static var previews: some View {
        OneBigButton(image: "magnifyingglass", one: "Отследить", two: "доставку") {}
    }
}
