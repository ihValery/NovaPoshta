//
//  FullLogo.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 26.07.2021.
//

import SwiftUI

struct FullLogo: View {
    @State private var animate = false
    @State private var animaOffset = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                ComponentLogo(name: "ArrowBig", degrees: 0)
                    .offset(y: animate ? 0 : -500)
                ComponentLogo(name: "ArrowBig", degrees: 180)
                    .offset(y: animate ? 0 : 500)
            }
            
            HStack(spacing: 20) {
                ComponentLogo(name: "Arrow", degrees: 270)
                    .offset(x: animate ? 0 : -500)
                ComponentLogo(name: "Arrow", degrees: 90)
                    .offset(x: animate ? 0 : 500)
            }
        }
        .rotationEffect(.degrees(animate ? 0 : 90))
        .opacity(animate ? 1 : 0)
        .offset(y: animaOffset ? 0 : (UIScreen.main.bounds.height > 750 ? 180 : 110))
        .scaleEffect(animaOffset ? 1 : 1.6)
        
        .onAppear {
            withAnimation(.easeInOut(duration: 1)) {
                animate = true
            }
            withAnimation(.spring().delay(2)) {
                animaOffset = true
            }
        }
    }
}

struct FullLogo_Previews: PreviewProvider {
    static var previews: some View {
        FullLogo()
    }
}
