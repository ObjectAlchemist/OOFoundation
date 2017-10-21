//
//  WritableDataMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class WritableDataMemory: OOWritableData {
    
    // MARK: - init
    
    init(optInitial: Data?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableData
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: Data {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: Data?
    
}

// convenience initializer
public extension WritableDataMemory {
    
    public convenience init(_ initial: Data) {
        self.init(optInitial: initial)
    }
    
    public convenience init() {
        self.init(optInitial: nil)
    }
    
}
