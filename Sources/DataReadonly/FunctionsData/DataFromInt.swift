//
//  DataFromInt.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class DataFromInt: OOData {
    
    // MARK: init
    
    public init(_ int: OOInt) {
        self.int = int
    }
    
    // MARK: protocol OOData
    
    public var value: Data {
        var intValue = int.value
        return Data(bytes: &intValue, count: MemoryLayout.size(ofValue: intValue))
    }
    
    // MARK: private
    
    private let int: OOInt
    
}

// convenience initializer
public extension DataFromInt {
    
    convenience init(_ int: Int) {
        self.init(IntConst(int))
    }
    
}
