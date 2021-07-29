//
//  FourRedLines.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 29.07.2021.
//

//import SwiftUI
//
//struct FourRedLines: View {
//    @Binding var change: Bool
//    @Binding var animateOnChange: Bool
//    
//    var body: some View {
//        ZStack {
//            HStack(spacing: 0) {
//                RedLineHor(change: $change, animateOnChange: $animateOnChange)
//                    .rotationEffect(.degrees(180))
//                RedLineHor(change: $change, animateOnChange: $animateOnChange)
//            }
//            
//            VStack(spacing: 0) {
//                RedLineVer(change: $change, animateOnChange: $animateOnChange)
//                    .rotationEffect(.degrees(180))
//                RedLineVer(change: $change, animateOnChange: $animateOnChange)
//            }
//        }
//    }
//}
//
//struct FourRedLines_Previews: PreviewProvider {
//    static var previews: some View {
//        FourRedLines(change: .constant(false), animateOnChange: .constant(false))
//    }
//}
