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
        let part = rect.width / 7
        
        path.move(to: CGPoint(x: 0, y: 50))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: 50))
        
        path.addLine(to: CGPoint(x: rect.width - part, y: 10))
        
        path.addQuadCurve(to: CGPoint(x: rect.width - part - 30, y: 0),
                          control: CGPoint(x: rect.width - part - 15, y: 0))
        
        path.addLine(to: CGPoint(x: part + 30, y: 0))
        path.addQuadCurve(to: CGPoint(x: part, y: 10),
                          control: CGPoint(x: part + 15, y: 0))

        return path
    }
}
