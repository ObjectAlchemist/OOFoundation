//
//  OOWritableData.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: WritableData
public protocol OOWritableData: OOData {

    var hasValue: Bool { get }
    var value: Data { get set }
    func remove()

}

public final class OOWritableDataFake: OOWritableData {

    // MARK: - init
    
    public init(_ initial: Data? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableData
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: Data {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: Data?

}

open /*abstract*/ class OOWritableDataWrap: OOWritableData {
    
    // MARK: - init
    
    public init(origin: OOWritableData) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableData
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: Data {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }

    // MARK: - private
    
    private let origin: OOWritableData
    
}
