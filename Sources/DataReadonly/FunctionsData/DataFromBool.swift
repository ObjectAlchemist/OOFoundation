//
//  DataFromBool.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class DataFromBool: OOData {
    
    // MARK: init
    
    public init(_ bool: OOBool) {
        self.bool = bool
    }
    
    // MARK: protocol OOData
    
    public var value: Data {
        var boolValue = bool.value
        return Data(bytes: &boolValue, count: MemoryLayout.size(ofValue: boolValue))
    }
    
    // MARK: private
    
    private let bool: OOBool
    
}

// convenience initializer
public extension DataFromBool {
    
    convenience init(_ bool: Bool) {
        self.init(BoolConst(bool))
    }
    
}
