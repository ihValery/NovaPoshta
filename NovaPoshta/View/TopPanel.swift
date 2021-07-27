//
//  TopPanel.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 27.07.2021.
//

import SwiftUI

struct TopPanel: View {
    @Binding var animate: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "person")
                        .font(.title)
                })
                
                Spacer()

                Button(action: {}, label: {
                    Image(systemName: "bell")
                        .font(.title)
                })
            }
            .foregroundColor(.white)
            .padding(.horizontal)
            .scaleEffect(y: animate ? 1 : 0, anchor: .bottom)
            
            Spacer()
        }
    }
}
