//
//  FourButton.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 27.07.2021.
//

import SwiftUI

struct FourButton: View {
    @Binding var animate: Bool
    
    var body: some View {
        ZStack {
            Line()
            Line()
                .rotationEffect(.degrees(90))
            
            VStack {
                HStack {
                    OneButton(image: "magnifyingglass", "Отследить", "доставку")
                    
                    OneButton(image: "plus.slash.minus", "Рассчитать", "доставку")
                }
                
                HStack {
                    OneButton(image: "map", "Найдите", "отделение")
                    
                    OneButton(image: "person.badge.plus", "Вызвать", "курьера")
                }
            }
        }
    }
}

struct FourButton_Previews: PreviewProvider {
    static var previews: some View {
        FourButton(animate: .constant(true))
    }
}

struct OneButton: View {
    let image: String
    let text: String
    let textTwo: String
    
    init(image: String,_ text: String,_ textTwo: String) {
        self.image = image
        self.text = text
        self.textTwo = textTwo
    }
    
    var body: some View {
        Button(action: {}, label: {
            VStack {
                Image(systemName: image)
                    .font(.system(size: UIScreen.main.bounds.height > 750 ? 50 : 30))
                    .foregroundColor(.redApp)
                    .padding()
                VStack {
                    Text(text)
                    Text(textTwo)
                }
                .font(.title2)
                .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        })
    }
}
