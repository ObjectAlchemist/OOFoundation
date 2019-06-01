//
//  OOData.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: Data
public protocol OOData: OOAny {

    var value: Data { get }

}

public final class OODataFake: OOData {

    // MARK: - init
    
    public init(_ value: Data = Data()) {
        self.value = value
    }
    
    // MARK: - protocol: OODate
    
    public let value: Data

    // MARK: - private
    
}

open /*abstract*/ class OODataWrap: OOData {
    
    // MARK: init
    
    public init(origin: OOData) {
        self.origin = origin
    }
    
    // MARK: protocol OOData
    
    public final var value: Data {
        return origin.value
    }
    
    // MARK: private
    
    private let origin: OOData
    
}

// OOAny compatibility
public extension OOData {
    
    var value: Any {
        return value as Data
    }
    
}
