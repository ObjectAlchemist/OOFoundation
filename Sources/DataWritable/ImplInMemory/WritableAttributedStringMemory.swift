//
//  WritableAttributedStringMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class WritableAttributedStringMemory: OOWritableAttributedString {
    
    // MARK: - init
    
    init(optInitial: NSAttributedString?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableAttributedString
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: NSAttributedString {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: NSAttributedString?
    
}

// convenience initializer
public extension WritableAttributedStringMemory {
    
    public convenience init(_ initial: NSAttributedString) {
        self.init(optInitial: initial)
    }
    
    public convenience init() {
        self.init(optInitial: nil)
    }
    
}
