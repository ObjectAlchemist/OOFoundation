//
//  StringFromAttributedString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class StringFromAttributedString: OOString {
    
    // MARK: init
    
    public init(_ string: OOAttributedString) {
        self.string = string
    }
    
    // MARK: protocol OOString
    
    public var value: String {
        return string.value.string
    }
    
    // MARK: private
    
    private let string: OOAttributedString
    
}
