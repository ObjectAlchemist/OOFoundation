//
//  HasWritableDataValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class HasWritableDataValue: OOBool {
    
    // MARK: - init
    
    public init(_ source: OOWritableData) {
        self.source = source
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return source.hasValue
    }
    
    // MARK: - private
    
    private let source: OOWritableData
    
}
