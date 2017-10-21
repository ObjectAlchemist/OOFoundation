//
//  OOWritableDate.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: WritableDate
public protocol OOWritableDate: OODate {

    var hasValue: Bool { get }
    var value: Date { get set }
    func remove()

}

public final class OOWritableDateFake: OOWritableDate {

    // MARK: - init
    
    public init(_ initial: Date? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableDate
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: Date {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: Date?

}

open /*abstract*/ class OOWritableDateWrap: OOWritableDate {
    
    // MARK: - init
    
    public init(origin: OOWritableDate) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableDate
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: Date {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }

    // MARK: - private
    
    private let origin: OOWritableDate
    
}
