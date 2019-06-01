//
//  URLIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class URLIF: OOURL {
    
    // MARK: - init
    
    public init(_ bool: OOBool, THEN primary: OOURL, ELSE secondary: OOURL) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOURL
    
    public var value: URL {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOURL
    private let secondary: OOURL
    
}

// convenience initializer
public extension URLIF {
    
    convenience init(_ bool: Bool, THEN primary: URL, ELSE secondary: URL) {
        self.init(BoolConst(bool), THEN: URLConst(primary), ELSE: URLConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: URL, ELSE secondary: OOURL) {
        self.init(BoolConst(bool), THEN: URLConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: Bool, THEN primary: OOURL, ELSE secondary: URL) {
        self.init(BoolConst(bool), THEN: primary, ELSE: URLConst(secondary))
    }
    
    convenience init(_ bool: OOBool, THEN primary: URL, ELSE secondary: URL) {
        self.init(bool, THEN: URLConst(primary), ELSE: URLConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: OOURL, ELSE secondary: OOURL) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: URL, ELSE secondary: OOURL) {
        self.init(bool, THEN: URLConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: OOURL, ELSE secondary: URL) {
        self.init(bool, THEN: primary, ELSE: URLConst(secondary))
    }
    
}
