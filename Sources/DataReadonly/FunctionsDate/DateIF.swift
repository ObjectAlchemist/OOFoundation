//
//  DateIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class DateIF: OODate {
    
    // MARK: - init
    
    public init(_ bool: OOBool, THEN primary: OODate, ELSE secondary: OODate) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OODate
    
    public var value: Date {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OODate
    private let secondary: OODate
    
}

// convenience initializer
public extension DateIF {
    
    convenience init(_ bool: Bool, THEN primary: Date, ELSE secondary: Date) {
        self.init(BoolConst(bool), THEN: DateConst(primary), ELSE: DateConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: Date, ELSE secondary: OODate) {
        self.init(BoolConst(bool), THEN: DateConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: Bool, THEN primary: OODate, ELSE secondary: Date) {
        self.init(BoolConst(bool), THEN: primary, ELSE: DateConst(secondary))
    }
    
    convenience init(_ bool: OOBool, THEN primary: Date, ELSE secondary: Date) {
        self.init(bool, THEN: DateConst(primary), ELSE: DateConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: OODate, ELSE secondary: OODate) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: Date, ELSE secondary: OODate) {
        self.init(bool, THEN: DateConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: OODate, ELSE secondary: Date) {
        self.init(bool, THEN: primary, ELSE: DateConst(secondary))
    }
    
}
