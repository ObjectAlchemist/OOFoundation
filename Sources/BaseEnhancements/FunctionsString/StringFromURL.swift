//
//  StringFromURL.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class StringFromURL: OOString {
    
    // MARK: init
    
    public init(url: OOURL) {
        self.url = url
    }
    
    // MARK: protocol OOString
    
    public var value: String {
        return url.value.absoluteString
    }
    
    // MARK: private
    
    private let url: OOURL
    
}
