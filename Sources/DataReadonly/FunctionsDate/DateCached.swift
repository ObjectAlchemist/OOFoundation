//
//  DateCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class DateCached: OODate {
    
    // MARK: - init
    
    public init(cache decorated: OODate, in store: OOWritableDate = WritableDateMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: OODate
    
    public var value: Date {
        let result: Date
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OODate
    private let store: OOWritableDate
    
}
