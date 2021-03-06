//
//  ImageLogo.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 26.07.2021.
//

import SwiftUI

struct ComponentLogo: View {
    let name: String
    let degrees: Double
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .rotationEffect(.degrees(degrees))
    }
}
