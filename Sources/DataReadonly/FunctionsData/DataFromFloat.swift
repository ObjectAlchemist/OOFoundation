//
//  DataFromFloat.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class DataFromFloat: OOData {
    
    // MARK: init
    
    public init(_ float: OOFloat) {
        self.float = float
    }
    
    // MARK: protocol OOData
    
    public var value: Data {
        var floatValue = float.value
        return Data(bytes: &floatValue, count: MemoryLayout.size(ofValue: floatValue))
    }
    
    // MARK: private
    
    private let float: OOFloat
    
}

// convenience initializer
public extension DataFromFloat {
    
    public convenience init(_ float: Bool) {
        self.init(float)
    }
    
}
