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
        UIScreen.main.bounds.height > 750 ? 310 : 300
    }
    
    var body: some View {
        Group {
            Trapeze()
                .fill(Color.redApp)
                .frame(height: height)
                .overlay(
                    VStack {
                        Button(action: {
                            withAnimation(.spring(dampingFraction: 0.6, blendDuration: 0.2)) {
                                showAbout.toggle()
                            }
                        }, label: {
                        Text("О Компании")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 80)
                        })
                        
//                        Spacer()
                        
                        VStack {
                            Button(action: {}, label: {
                                Text("Новости")
                            })
                            
                            LineWhite()
                            Button(action: {}, label: {
                                Text("Центр поддержки")
                            })

                            LineWhite()
                            Button(action: {}, label: {
                                Text("Документация")
                            })

                            LineWhite()
                        }
                        .font(.title3)
                        .foregroundColor(.white)
                        
                        Spacer()
                })
        }
        .offset(y: showAbout ? 80 : 250)
    }
}

struct SmallTrapeze_Previews: PreviewProvider {
    static var previews: some View {
        SmallTrapeze(showAbout: .constant(true))
    }
}

struct LineWhite: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.redApp, .white.opacity(0.3), .redApp]), startPoint: .leading, endPoint: .trailing))
                .frame(width: UIScreen.main.bounds.width * 2 / 3, height: 1)
        }
    }
}
