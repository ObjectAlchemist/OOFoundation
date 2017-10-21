//
//  OOIndexPath.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: IndexPath
public protocol OOIndexPath: OOAny {

    var value: IndexPath { get }
    
}

public final class OOIndexPathFake: OOIndexPath {

    // MARK: - init
    
    public init(_ value: IndexPath = IndexPath()) {
        self.value = value
    }
    
    // MARK: - protocol: OOIndexPath

    public let value: IndexPath
    
    // MARK: - private
    
}

open /*abstract*/ class OOIndexPathWrap: OOIndexPath {
    
    // MARK: init
    
    public init(origin: OOIndexPath) {
        self.origin = origin
    }
    
    // MARK: protocol OOIndexPath
    
    public final var value: IndexPath {
        return origin.value
    }
    
    // MARK: private
    
    private let origin: OOIndexPath
    
}

// OOAny compatibility
public extension OOIndexPath {
    
    public var value: Any {
        return value as IndexPath
    }
    
}
