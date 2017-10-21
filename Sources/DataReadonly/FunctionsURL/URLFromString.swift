//
//  URLFromString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class URLFromString: OOURL {
    
    // MARK: init
    
    public init(string: OOString) {
        self.string = string
    }
    
    // MARK: protocol OOURL
    
    public var value: URL {
        return URL(string: string.value)!
    }
    
    // MARK: private
    
    private let string: OOString
    
}
