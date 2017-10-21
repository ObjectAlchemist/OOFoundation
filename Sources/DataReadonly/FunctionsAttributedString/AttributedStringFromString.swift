//
//  AttributedStringFromString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class AttributedStringFromString: OOAttributedString {
    
    // MARK: init
    
    public init(_ string: OOString) {
        self.string = string
    }
    
    // MARK: protocol OOAttributedString
    
    public var value: NSAttributedString {
        return NSAttributedString(string: string.value)
    }
    
    // MARK: private
    
    private let string: OOString
    
}

// convenience initializer
public extension AttributedStringFromString {
    
    public convenience init(_ string: String) {
        self.init(StringConst(string))
    }
    
}
