//
//  RedLine.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct RedLine: View {
    @State private var change = false
    @State private var animateOnChange = false
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 3)
                    .fill(LinearGradient(gradient: Gradient(colors: [.gray, .white]),
                                         startPoint: .leading, endPoint: .trailing))
                    .frame(width: 200, height: 1)
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(LinearGradient(gradient: Gradient(colors: [.redApp, .white]),
                                         startPoint: .leading, endPoint: .trailing))
                    .frame(width: 200, height: 1)
                    .mask(
                        RoundedRectangle(cornerRadius: 3)
                            .offset(x: change ? 200 : -200)
                            .animation(.linear(duration: 1).repeatCount(1, autoreverses: false), value: animateOnChange)
                    )
            }
            
            Spacer()
            
            Button(action: {
                change.toggle()
                
                if change {
                    animateOnChange.toggle()
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    change = false
                }
            }, label: {
                Text("Start")
            })
        }
    }
}

struct RedLine_Previews: PreviewProvider {
    static var previews: some View {
        RedLine()
    }
}
