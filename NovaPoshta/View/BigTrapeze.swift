//
//  BigTrapeze.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 27.07.2021.
//

import SwiftUI

struct BigTrapeze: View {
    @Binding var animate: Bool
    
    var body: some View {
        Trapeze()
            .fill(Color.white)
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
            .overlay(
                VStack {
                    Text("Доставка будущего")
                        .bold()
                        .foregroundColor(.redApp)
                        .padding()
                    Spacer()
                    
                    FourButton(animate: $animate)
                        .padding(.bottom, 50)
                    
                    Spacer()
                }
            )
    }
}

struct BigTrapeze_Previews: PreviewProvider {
    static var previews: some View {
        BigTrapeze(animate: .constant(true))
    }
}
