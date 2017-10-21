//
//  DataCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class DataCached: OOData {
    
    // MARK: - init
    
    public init(cache decorated: OOData, in store: OOWritableData = WritableDataMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: OOData
    
    public var value: Data {
        let result: Data
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOData
    private let store: OOWritableData
    
}
