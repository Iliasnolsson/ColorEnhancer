//
//  File.swift
//  
//
//  Created by Ilias Nikolaidis Olsson on 2022-07-13.
//

import UIKit

public enum ColorTheme: Int {
    case dark = 10
    case light = 20
    
    
    public static func from(_ interfaceStyle: UIUserInterfaceStyle) -> ColorTheme {
        return interfaceStyle == .dark ? .dark : .light
    }
    
    private static func getWindow() -> UIWindow? {
        if #available(iOS 15.0, *) {
            return UIApplication.shared
                .connectedScenes.lazy
                .compactMap { $0.activationState == .foregroundActive ? ($0 as? UIWindowScene) : nil }
                .last(where: { $0.keyWindow != nil })?
                .keyWindow
        }
        return UIApplication.shared.windows.first(where: { $0.isKeyWindow })
    }
    
    static var current: ColorTheme? {
        if let window = getWindow() {
            return from(window.traitCollection.userInterfaceStyle)
        }
        return nil
    }
    
}
