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
                .frame(height: 1)
                .frame(maxWidth: .infinity)
        }
    }
}
