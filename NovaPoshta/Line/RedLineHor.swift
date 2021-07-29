//
//  RedLineHor.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

import SwiftUI

struct RedLineHor: View {
    let width = (UIScreen.main.bounds.width * 2 / 3) / 2
    
    @Binding var change: Bool
    @Binding var animateOnChange: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3)
                .fill(LinearGradient(gradient: Gradient(colors: [.gray.opacity(0.3), .white]),
                                     startPoint: .leading, endPoint: .trailing))
                .frame(width: width, height: 1)
            
            RoundedRectangle(cornerRadius: 3)
                .fill(LinearGradient(gradient: Gradient(colors: [.redApp, .white]),
                                     startPoint: .leading, endPoint: .trailing))
                .frame(width: width, height: 1)
                .mask(
                    RoundedRectangle(cornerRadius: 3)
                        .offset(x: change ? width : -width)
                        .animation(.linear(duration: 1).repeatCount(1, autoreverses: false), value: animateOnChange)
                )
        }
    }
}

struct RedLineVer: View {
    let width = (UIScreen.main.bounds.width * 2 / 3) / 2
    
    @Binding var change: Bool
    @Binding var animateOnChange: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3)
                .fill(LinearGradient(gradient: Gradient(colors: [.gray.opacity(0.3), .white]),
                                     startPoint: .top, endPoint: .bottom))
                .frame(width: 1, height: width)
            
            RoundedRectangle(cornerRadius: 3)
                .fill(LinearGradient(gradient: Gradient(colors: [.redApp, .white]),
                                     startPoint: .top, endPoint: .bottom))
                .frame(width: 1, height: width)
                .mask(
                    RoundedRectangle(cornerRadius: 3)
                        .offset(y: change ? width : -width)
                        .animation(.linear(duration: 1).repeatCount(1, autoreverses: false), value: animateOnChange)
                )
        }
    }
}
//
//struct RedLine_Previews: PreviewProvider {
//    static var previews: some View {
//        RedLineHor()
//    }
//}
