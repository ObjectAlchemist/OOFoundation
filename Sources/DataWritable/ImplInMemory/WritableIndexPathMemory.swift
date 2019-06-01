//
//  WritableIndexPathMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class WritableIndexPathMemory: OOWritableIndexPath {
    
    // MARK: - init
    
    init(optInitial: IndexPath?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableIndexPath
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: IndexPath {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: IndexPath?
    
}

// convenience initializer
public extension WritableIndexPathMemory {
    
    convenience init(_ initial: IndexPath) {
        self.init(optInitial: initial)
    }
    
    convenience init() {
        self.init(optInitial: nil)
    }
    
}
