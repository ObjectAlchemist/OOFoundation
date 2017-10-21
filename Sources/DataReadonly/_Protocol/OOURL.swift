//
//  URLValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

// protocol prefix: URL
public protocol OOURL: OOAny {

    var value: URL { get }
    
}

public final class OOURLFake: OOURL {

    // MARK: - init
    
    public init(value: URL = URL(string: NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!)!) {
        self.value = value
    }
    
    // MARK: - protocol: OOURL
    
    public let value: URL
    
    // MARK: - private
    
}

open /*abstract*/ class OOURLWrap: OOURL {
    
    // MARK: init
    
    public init(origin: OOURL) {
        self.origin = origin
    }
    
    // MARK: protocol OOURL
    
    public final var value: URL {
        return origin.value
    }
    
    // MARK: private
    
    private let origin: OOURL
    
}

// OOAny compatibility
public extension OOURL {
    
    public var value: Any {
        return value as URL
    }
    
}
