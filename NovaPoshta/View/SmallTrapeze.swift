//
//  SmallTrapeze.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 27.07.2021.
//

import SwiftUI

struct SmallTrapeze: View {
    @Binding var showAbout: Bool
    private var height: CGFloat {
        UIScreen.main.bounds.height > 750 ? 270 : 250
    }
    
    var body: some View {
        Group {
            Trapeze()
                .fill(Color.redApp)
                .frame(height: height)
                .overlay(
                    VStack {
                        Button(action: {
                            withAnimation(.spring()) {
                                showAbout.toggle()
                            }
                        }, label: {
                        Text("О Компании")
                            .foregroundColor(.white)
                            .padding()
                        })
                        
                        Spacer()
                        
                        VStack {
                            Button(action: {}, label: {
                                Text("Новости")
                            })
                            
                            LineRed()
                            Button(action: {}, label: {
                                Text("Центр поддержки")
                            })

                            LineRed()
                            Button(action: {}, label: {
                                Text("Документация")
                            })

                            LineRed()
                        }
                        .font(.title3)
                        .foregroundColor(.white)
                        
                        Spacer()
                })
        }
        .offset(y: showAbout ? 0 : 200)
    }
}

struct SmallTrapeze_Previews: PreviewProvider {
    static var previews: some View {
        SmallTrapeze(showAbout: .constant(true))
    }
}

struct LineRed: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.redApp, .white.opacity(0.3), .redApp]), startPoint: .leading, endPoint: .trailing))
                .frame(width: UIScreen.main.bounds.width * 2 / 3, height: 1)
        }
    }
}
