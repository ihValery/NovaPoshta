//
//  ContentView.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 26.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    
    var body: some View {
        ZStack {
            Color.redApp
                .ignoresSafeArea()
            
            TopPanel(animate: $animate)
            
            VStack {
                Spacer()
                
                FullLogo()
                TextLogo(animate: $animate)
                
                Spacer()
                ZStack(alignment: .bottom) {
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
                            }
                        )
                    
                    Trapeze()
                        .fill(Color.redApp)
                        .frame(height: UIScreen.main.bounds.height > 750 ? 70 : 50)
                        .overlay(Button(action: {}, label: {
                            Text("О Компании")
                                .foregroundColor(.white)
                                .padding(.bottom, UIScreen.main.bounds.height > 750 ? 20 : 0)
                        }))
                }
                .offset(y: animate ? 0 : 1000)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        
        .onAppear {
            withAnimation(.spring().delay(2)) {
                animate = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
