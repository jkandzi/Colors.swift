//
//  Colors.swift
//  Colors
//
//  Created by Justus Kandzi on 22/10/15.
//  Copyright © 2015 justus kandzi. All rights reserved.
//

import Foundation

private let colorsSupported: Bool = {
    if Process.arguments.contains("--no-color")
        || Process.arguments.contains("--color=false") {
            return false
    }
    
    if Process.arguments.contains("--color")
        || Process.arguments.contains("--color=true")
        || Process.arguments.contains("--color=always") {
            return true
    }
    
    let cString = getenv("TERM")
    guard let term = String.fromCString(cString) else {
        return false
    }
    
    return term.hasPrefix("screen")
        || term.hasPrefix("xterm")
        || term.hasPrefix("vt100")
        || term.containsString("color")
        || term.containsString("ansi")
        || term.containsString("cygwin")
        || term.containsString("linux")
    }()


extension String {
    
    public enum Color: Int {
        case Black = 30
        case Red
        case Green
        case Yellow
        case Blue
        case Magenta
        case Cyan
        case White
        case Gray = 90
    }
    
    public enum BackgroundColor: Int {
        case BlackBackground = 40
        case RedBackground
        case GreenBackground
        case YellowBackground
        case BlueBackground
        case MagentaBackground
        case CyanBackground
        case WhiteBackground
        case GrayBackground = 90
    }
    
    public enum Style: Int {
        case Bold = 1
        case Dim
        case Italic
        case Underline
        case Inverse = 7
        case Hidden
        case Strikethrough
    }
    
    public func paint(color: Color) -> String {
        return applyCode((color.rawValue, 39))
    }
    
    public func paint(color: BackgroundColor) -> String {
        return applyCode((color.rawValue, 49))
    }
    
    public func style(style: Style) -> String {
        if style == .Bold {
            return applyCode((style.rawValue, 22))
        }
        else {
            return applyCode((style.rawValue, style.rawValue + 20))
        }
    }
    
    private func applyCode(code: (start: Int, end: Int)) -> String {
        if !colorsSupported {
            return self
        }
        return "\u{001b}[\(code.start)m\(self)\u{001b}[\(code.end)m"
    }
}

// MARK: - Operator

/// Operator
///
infix operator >-- { precedence 255 associativity left}
func >-- (text: String, color: String.Color) -> String {
    return text.paint(color)
}

func >-- (text: String, color: String.BackgroundColor) -> String {
    return text.paint(color)
}

func >-- (text: String, style: String.Style) -> String {
    return text.style(style)
}
