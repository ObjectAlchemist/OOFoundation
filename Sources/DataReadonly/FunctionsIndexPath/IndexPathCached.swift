//
//  IndexPathCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class IndexPathCached: OOIndexPath {
    
    // MARK: - init
    
    public init(cache decorated: OOIndexPath, in store: OOWritableIndexPath = WritableIndexPathMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: OOIndexPath
    
    public var value: IndexPath {
        let result: IndexPath
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOIndexPath
    private let store: OOWritableIndexPath
    
}
