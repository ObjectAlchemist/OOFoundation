//
//  OODate.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: Date
public protocol OODate: OOAny {

    var value: Date { get }
    
}

public final class OODateFake: OODate {

    // MARK: - init
    
    public init(_ value: Date = Date()) {
        self.value = value
    }
    
    // MARK: - protocol: OODate
    
    public let value: Date
    
    // MARK: - private
    
}

open /*abstract*/ class OODateWrap: OODate {
    
    // MARK: init
    
    public init(origin: OODate) {
        self.origin = origin
    }
    
    // MARK: protocol OODate
    
    public final var value: Date {
        return origin.value
    }
    
    // MARK: private
    
    private let origin: OODate
    
}

// OOAny compatibility
public extension OODate {
    
    public var value: Any {
        return value as Date
    }
    
}
