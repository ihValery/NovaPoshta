//
//  ContentView.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 26.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    @State private var showAbout = false
    
    var body: some View {
        ZStack {
            ZStack {
                Color.redApp
                    .ignoresSafeArea()
                
                TopPanel(animate: $animate)
                
                VStack {
                    Spacer()
                    
                    FullLogo()
                    
                    TextLogo(animate: $animate)
                    
                    Spacer()
                    BigTrapeze(animate: $animate)
                        .offset(y: animate ? 0 : 1000)
                }
                .edgesIgnoringSafeArea(.bottom)
            }
            .blur(radius: showAbout ? 2 : 0)
            
            ZStack {
                if showAbout {
                    Color.black
                        .opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation(.spring(dampingFraction: 0.6, blendDuration: 0.2)) {
                                showAbout = false
                            }
                        }
                }
                
                VStack {
                    Spacer()
                    
                    SmallTrapeze(showAbout: $showAbout)
                }
                .offset(y: animate ? (UIScreen.main.bounds.height > 750 ? 40 : 0) : 1000)
            }
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
