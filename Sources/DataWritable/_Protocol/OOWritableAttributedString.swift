//
//  OOWritableAttributedString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: WritableAttributedString
public protocol OOWritableAttributedString: OOAttributedString {

    var hasValue: Bool { get }
    var value: NSAttributedString { get set }
    func remove()

}

public final class OOWritableAttributedStringFake: OOWritableAttributedString {

    // MARK: - init
    
    public init(_ initial: NSAttributedString? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableAttributedString
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: NSAttributedString {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: NSAttributedString?

}

open /*abstract*/ class OOWritableAttributedStringWrap: OOWritableAttributedString {
    
    // MARK: - init
    
    public init(origin: OOWritableAttributedString) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableAttributedString
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: NSAttributedString {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }

    // MARK: - private
    
    private let origin: OOWritableAttributedString
    
}
