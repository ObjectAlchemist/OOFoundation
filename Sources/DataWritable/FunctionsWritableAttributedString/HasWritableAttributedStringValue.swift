//
//  HasWritableAttributedStringValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class HasWritableAttributedStringValue: OOBool {
    
    // MARK: - init
    
    public init(_ source: OOWritableAttributedString) {
        self.source = source
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return source.hasValue
    }
    
    // MARK: - private
    
    private let source: OOWritableAttributedString
    
}
