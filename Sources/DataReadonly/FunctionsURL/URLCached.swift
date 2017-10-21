//
//  URLCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class URLCached: OOURL {
    
    // MARK: - init
    
    public init(cache decorated: OOURL, in store: OOWritableURL = WritableURLMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: OOURL
    
    public var value: URL {
        let result: URL
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOURL
    private let store: OOWritableURL
    
}
