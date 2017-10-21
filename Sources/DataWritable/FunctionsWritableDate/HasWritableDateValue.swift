//
//  HasWritableDateValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class HasWritableDateValue: OOBool {
    
    // MARK: - init
    
    public init(_ source: OOWritableDate) {
        self.source = source
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return source.hasValue
    }
    
    // MARK: - private
    
    private let source: OOWritableDate
    
}
