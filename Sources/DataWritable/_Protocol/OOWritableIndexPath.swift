//
//  OOWritableIndexPath.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: WritableIndexPath
public protocol OOWritableIndexPath: OOIndexPath {

    var hasValue: Bool { get }
    var value: IndexPath { get set }
    func remove()

}

public final class OOWritableIndexPathFake: OOWritableIndexPath {

    // MARK: - init
    
    public init(_ initial: IndexPath? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableIndexPath
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: IndexPath {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: IndexPath?

}

open /*abstract*/ class OOWritableIndexPathWrap: OOWritableIndexPath {
    
    // MARK: - init
    
    public init(origin: OOWritableIndexPath) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableIndexPath
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: IndexPath {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }

    // MARK: - private
    
    private let origin: OOWritableIndexPath
    
}
