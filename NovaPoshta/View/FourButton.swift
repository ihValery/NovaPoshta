//
//  FourButton.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 27.07.2021.
//

import SwiftUI

struct FourButton: View {
    @Binding var animate: Bool
    
    @State private var change1 = false
    @State private var change2 = false
    @State private var change3 = false
    @State private var change4 = false
    
    @State private var animateOnChange = false
    
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                RedLineHor(change: $change1, animateOnChange: $animateOnChange)
                    .rotationEffect(.degrees(180))
                RedLineHor(change: $change2, animateOnChange: $animateOnChange)
            }
            
            VStack(spacing: 0) {
                RedLineVer(change: $change3, animateOnChange: $animateOnChange)
                    .rotationEffect(.degrees(180))
                RedLineVer(change: $change4, animateOnChange: $animateOnChange)
            }
            
            VStack {
                HStack {
                    OneBigButton(image: "magnifyingglass", one: "Отследить", two: "доставку") {
                        switchingForAnimation(one: $change1, two: $change3)
                    }
                    
                    OneBigButton(image: "plus.slash.minus", one: "Рассчитать", two: "доставку") {
                        switchingForAnimation(one: $change3, two: $change2)
                    }
                }
                
                HStack {
                    OneBigButton(image: "map", one: "Найдите", two: "отделение") {
                        switchingForAnimation(one: $change1, two: $change4)
                    }
                    
                    OneBigButton(image: "person.badge.plus", one: "Вызвать", two: "курьера") {
                        switchingForAnimation(one: $change2, two: $change4)
                    }
                }
            }
        }
    }
    
    private func switchingForAnimation(one: Binding<Bool>, two: Binding<Bool>) {
        one.wrappedValue.toggle()
        two.wrappedValue.toggle()
        
        if one.wrappedValue && two.wrappedValue {
            animateOnChange.toggle()
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            one.wrappedValue = false
            two.wrappedValue = false
        }
    }
}

struct FourButton_Previews: PreviewProvider {
    static var previews: some View {
        FourButton(animate: .constant(true))
    }
}
