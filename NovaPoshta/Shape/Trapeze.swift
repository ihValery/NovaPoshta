//
//  Trapeze.swift
//  NovaPoshta
//
//  Created by Валерий Игнатьев on 26.07.2021.
//

import SwiftUI

struct Trapeze: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 50))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: 50))
        
        path.addLine(to: CGPoint(x: rect.width - (rect.width / 6), y: 0))
        path.addLine(to: CGPoint(x: rect.width / 6, y: 0))

        return path
    }
}
