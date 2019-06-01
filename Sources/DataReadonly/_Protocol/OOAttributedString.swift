//
//  OOAttributedString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: AttributedString
public protocol OOAttributedString: OOAny {

    var value: NSAttributedString { get }
    
}

public final class OOAttributedStringFake: OOAttributedString {

    // MARK: - init
    
    public init(_ value: NSAttributedString = NSAttributedString(string: "")) {
        self.value = value
    }
    
    // MARK: - protocol: OOAttributedString
    
    public let value: NSAttributedString
    
    // MARK: - private
    
}

open /*abstract*/ class OOAttributedStringWrap: OOAttributedString {
    
    // MARK: init
    
    public init(origin: OOAttributedString) {
        self.origin = origin
    }
    
    // MARK: protocol OOAttributedString
    
    public final var value: NSAttributedString {
        return origin.value
    }
    
    // MARK: private
    
    private let origin: OOAttributedString
    
}

// OOAny compatibility
public extension OOAttributedString {
    
    var value: Any {
        return value as NSAttributedString
    }
    
}
