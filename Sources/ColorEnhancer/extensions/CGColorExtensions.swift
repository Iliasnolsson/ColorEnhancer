//
//  File.swift
//  
//
//  Created by Ilias Nikolaidis Olsson on 2023-03-08.
//

import UIKit

public extension CGColor {
    
    static func initalize(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat, colorSpaceIdentifier: CFString = CGColorSpace.sRGB) -> CGColor {
        let colorSpace = CGColorSpace(name: colorSpaceIdentifier)!
        return .init(colorSpace: colorSpace, components: [r, g, b, a])!
    }
    
    static func initalize(r255: CGFloat, g255: CGFloat, b255: CGFloat, a1: CGFloat, colorSpaceIdentifier: CFString = CGColorSpace.sRGB) -> CGColor {
        return .initalize(r: r255/255, g: g255/255, b: b255/255, a: a1, colorSpaceIdentifier: colorSpaceIdentifier)
    }
    
    static var appTintColor: CGColor {UIColor.appTintColor.cgColor}
    
}
