//
//  ButtonAnimation.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 26.07.2021.
//

import SwiftUI

struct ButtonAnimation: View {
    @Binding var animate: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                withAnimation(.easeInOut(duration: 1)) {
                    animate.toggle()
                }
            }, label: {
                Text("Анимация")
                    .foregroundColor(.white)
            })
        }
    }
}

struct ButtonAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAnimation(animate: .constant(true))
    }
}
