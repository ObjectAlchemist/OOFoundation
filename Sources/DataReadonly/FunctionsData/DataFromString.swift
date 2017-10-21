//
//  DataFromString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class DataFromString: OOData {
    
    // MARK: init

    public init(value: OOString, encoding: String.Encoding = .utf8) {
        self._value = value
        self.encoding = encoding
    }
    
    // MARK: protocol OOData
    
    public var value: Data {
        return _value.value.data(using: encoding)!
    }
    
    // MARK: private
    
    private let _value: OOString
    private let encoding: String.Encoding
}

// convenience initializer
public extension DataFromString {
    
    public convenience init(value: String, encoding: String.Encoding = .utf8) {
        self.init(value: StringConst(value), encoding: encoding)
    }
    
}
