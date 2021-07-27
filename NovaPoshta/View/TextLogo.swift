//
//  TextLogo.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 27.07.2021.
//

import SwiftUI

struct TextLogo: View {
    @Binding var animate: Bool
    
    var body: some View {
        Image("NovaPochta")
            .resizable()
            .scaledToFit()
            .frame(width: 160)
            .scaleEffect(y: animate ? 1 : 0, anchor: .top)
            .animation(.spring().delay(2.3))
    }
}
