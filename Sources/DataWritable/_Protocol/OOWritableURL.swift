//
//  OOWritableURL.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: WritableURL
public protocol OOWritableURL: OOURL {

    var hasValue: Bool { get }
    var value: URL { get set }
    func remove()

}

public final class OOWritableURLFake: OOWritableURL {

    // MARK: - init
    
    public init(_ initial: URL? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableURL
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: URL {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: URL?

}

open /*abstract*/ class OOWritableURLWrap: OOWritableURL {
    
    // MARK: - init
    
    public init(origin: OOWritableURL) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableURL
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: URL {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }

    // MARK: - private
    
    private let origin: OOWritableURL
    
}
