//
//  HasWritableURLValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class HasWritableURLValue: OOBool {
    
    // MARK: - init
    
    public init(_ source: OOWritableURL) {
        self.source = source
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return source.hasValue
    }
    
    // MARK: - private
    
    private let source: OOWritableURL
    
}
