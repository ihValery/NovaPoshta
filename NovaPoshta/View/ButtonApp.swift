//
//  ButtonApp.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 27.07.2021.
//

import SwiftUI

struct ButtonApp: View {
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
                Line(change: $change)
                Line(change: $change)
                    .rotationEffect(.degrees(90))
            }
            .frame(width: 200, height: 200)
        }
    }
}

struct ButtonApp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonApp()
    }
}

struct Line: View {
    @Binding var change: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.gray.opacity(0.3), .white]), startPoint: .leading, endPoint: .trailing))
                .frame(height: 1)
                .frame(maxWidth: .infinity)

            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.redApp, .white]), startPoint: .leading, endPoint: .trailing))
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .mask(
                    Rectangle()
                        .rotationEffect(.degrees(70))
                        .frame(height: 200)
                        .offset(x: -400)
                        .offset(x: change ? 700 : 0)
                )
        }
    }
}
