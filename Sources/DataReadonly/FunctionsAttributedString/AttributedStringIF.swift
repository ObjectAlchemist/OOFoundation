//
//  AttributedStringIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class AttributedStringIF: OOAttributedString {
    
    // MARK: - init
    
    public init(_ bool: OOBool, THEN primary: OOAttributedString, ELSE secondary: OOAttributedString) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOAttributedString
    
    public var value: NSAttributedString {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOAttributedString
    private let secondary: OOAttributedString
    
}

// convenience initializer
public extension AttributedStringIF {
    
    public convenience init(_ bool: Bool, THEN primary: NSAttributedString, ELSE secondary: NSAttributedString = NSAttributedString(string: "")) {
        self.init(BoolConst(bool), THEN: AttributedStringConst(primary), ELSE: AttributedStringConst(secondary))
    }
    
    public convenience init(_ bool: Bool, THEN primary: NSAttributedString, ELSE secondary: OOAttributedString) {
        self.init(BoolConst(bool), THEN: AttributedStringConst(primary), ELSE: secondary)
    }
    
    public convenience init(_ bool: Bool, THEN primary: OOAttributedString, ELSE secondary: NSAttributedString = NSAttributedString(string: "")) {
        self.init(BoolConst(bool), THEN: primary, ELSE: AttributedStringConst(secondary))
    }
    
    public convenience init(_ bool: OOBool, THEN primary: NSAttributedString, ELSE secondary: NSAttributedString = NSAttributedString(string: "")) {
        self.init(bool, THEN: AttributedStringConst(primary), ELSE: AttributedStringConst(secondary))
    }
    
    public convenience init(_ bool: Bool, THEN primary: OOAttributedString, ELSE secondary: OOAttributedString) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    public convenience init(_ bool: OOBool, THEN primary: NSAttributedString, ELSE secondary: OOAttributedString) {
        self.init(bool, THEN: AttributedStringConst(primary), ELSE: secondary)
    }
    
    public convenience init(_ bool: OOBool, THEN primary: OOAttributedString, ELSE secondary: NSAttributedString = NSAttributedString(string: "")) {
        self.init(bool, THEN: primary, ELSE: AttributedStringConst(secondary))
    }
    
}
