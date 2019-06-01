//
//  DataIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class DataIF: OOData {
    
    // MARK: - init
    
    public init(_ bool: OOBool, THEN primary: OOData, ELSE secondary: OOData) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOData
    
    public var value: Data {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOData
    private let secondary: OOData
    
}

// convenience initializer
public extension DataIF {
    
    convenience init(_ bool: Bool, THEN primary: Data, ELSE secondary: Data = Data()) {
        self.init(BoolConst(bool), THEN: DataConst(primary), ELSE: DataConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: Data, ELSE secondary: OOData) {
        self.init(BoolConst(bool), THEN: DataConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: Bool, THEN primary: OOData, ELSE secondary: Data = Data()) {
        self.init(BoolConst(bool), THEN: primary, ELSE: DataConst(secondary))
    }
    
    convenience init(_ bool: OOBool, THEN primary: Data, ELSE secondary: Data = Data()) {
        self.init(bool, THEN: DataConst(primary), ELSE: DataConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: OOData, ELSE secondary: OOData) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: Data, ELSE secondary: OOData) {
        self.init(bool, THEN: DataConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: OOData, ELSE secondary: Data = Data()) {
        self.init(bool, THEN: primary, ELSE: DataConst(secondary))
    }
    
}
