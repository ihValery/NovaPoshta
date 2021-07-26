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
            
            FullLogo(animate: $animate)
            
            VStack {
                Trapeze()
            }
            
            ButtonAnimation(animate: $animate)
        }
        
        .onAppear {
            withAnimation(.easeInOut(duration: 1)) {
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
