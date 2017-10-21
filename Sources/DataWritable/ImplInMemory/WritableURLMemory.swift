//
//  WritableURLMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class WritableURLMemory: OOWritableURL {
    
    // MARK: - init
    
    init(optInitial: URL?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableURL
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: URL {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: URL?
    
}

// convenience initializer
public extension WritableURLMemory {
    
    public convenience init(_ initial: URL) {
        self.init(optInitial: initial)
    }
    
    public convenience init() {
        self.init(optInitial: nil)
    }
    
}
