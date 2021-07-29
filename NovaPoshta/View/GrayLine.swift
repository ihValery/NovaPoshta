//
//  GrayLine.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 27.07.2021.
//

import SwiftUI

struct GrayLine: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white, .gray.opacity(0.3), .white]), startPoint: .leading, endPoint: .trailing))
                .frame(width: UIScreen.main.bounds.width * 2 / 3, height: 1)
        }
    }
}
