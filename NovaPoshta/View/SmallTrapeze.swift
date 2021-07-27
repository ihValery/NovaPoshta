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
                            
                            
                            
                            Button(action: {}, label: {
                                Text("Центр поддержки")
                            })

                            Button(action: {}, label: {
                                Text("Документация")
                            })

                        }
                        
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
