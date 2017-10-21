//
//  WritableDateMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class WritableDateMemory: OOWritableDate {
    
    // MARK: - init
    
    init(optInitial: Date?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableDate
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: Date {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: Date?
    
}

// convenience initializer
public extension WritableDateMemory {
    
    public convenience init(_ initial: Date) {
        self.init(optInitial: initial)
    }
    
    public convenience init() {
        self.init(optInitial: nil)
    }
    
}
