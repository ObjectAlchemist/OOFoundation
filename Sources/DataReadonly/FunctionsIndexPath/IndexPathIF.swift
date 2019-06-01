//
//  IndexPathIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class IndexPathIF: OOIndexPath {
    
    // MARK: - init
    
    public init(_ bool: OOBool, THEN primary: OOIndexPath, ELSE secondary: OOIndexPath) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOIndexPath
    
    public var value: IndexPath {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOIndexPath
    private let secondary: OOIndexPath
    
}

// convenience initializer
public extension IndexPathIF {
    
    convenience init(_ bool: Bool, THEN primary: IndexPath, ELSE secondary: IndexPath) {
        self.init(BoolConst(bool), THEN: IndexPathConst(primary), ELSE: IndexPathConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: IndexPath, ELSE secondary: OOIndexPath) {
        self.init(BoolConst(bool), THEN: IndexPathConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: Bool, THEN primary: OOIndexPath, ELSE secondary: IndexPath) {
        self.init(BoolConst(bool), THEN: primary, ELSE: IndexPathConst(secondary))
    }
    
    convenience init(_ bool: OOBool, THEN primary: IndexPath, ELSE secondary: IndexPath) {
        self.init(bool, THEN: IndexPathConst(primary), ELSE: IndexPathConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: OOIndexPath, ELSE secondary: OOIndexPath) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: IndexPath, ELSE secondary: OOIndexPath) {
        self.init(bool, THEN: IndexPathConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: OOIndexPath, ELSE secondary: IndexPath) {
        self.init(bool, THEN: primary, ELSE: IndexPathConst(secondary))
    }
    
}
