//
//  FullLogo.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 26.07.2021.
//

import SwiftUI

struct FullLogo: View {
    @Binding var animate: Bool
    
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                ComponentLogo(name: "ArrowBig", degrees: 0)
                    .offset(y: animate ? 0 : -500)
                ComponentLogo(name: "ArrowBig", degrees: 180)
                    .offset(y: animate ? 0 : 500)
            }
            
            HStack(spacing: 30) {
                ComponentLogo(name: "Arrow", degrees: 270)
                    .offset(x: animate ? 0 : -500)
                ComponentLogo(name: "Arrow", degrees: 90)
                    .offset(x: animate ? 0 : 500)
            }
        }
        .rotationEffect(.degrees(animate ? 0 : 90))
        .opacity(animate ? 1 : 0)
    }
}

struct FullLogo_Previews: PreviewProvider {
    static var previews: some View {
        FullLogo(animate: .constant(true))
    }
}
