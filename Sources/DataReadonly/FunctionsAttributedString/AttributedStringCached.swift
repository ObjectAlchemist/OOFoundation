//
//  AttributedStringCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class AttributedStringCached: OOAttributedString {
    
    // MARK: - init
    
    public init(cache decorated: OOAttributedString, in store: OOWritableAttributedString = WritableAttributedStringMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: OOAttributedString
    
    public var value: NSAttributedString {
        let result: NSAttributedString
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOAttributedString
    private let store: OOWritableAttributedString
    
}
