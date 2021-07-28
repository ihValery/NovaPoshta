//
//  RedLine.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct RedLine: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                Button(action: {
                    withAnimation(.linear(duration: 2).repeatCount(1, autoreverses: false)) {
                        change.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                            change = false
                        })
                    }
                }, label: {
                    Text("Change")
                })
            }
            
            
            VStack {
                GrayLine()
                GrayLine()
                    .rotationEffect(.degrees(90))
            }
            .frame(width: 200, height: 200)
        }
    }
}

struct RedLine_Previews: PreviewProvider {
    static var previews: some View {
        RedLine()
    }
}
