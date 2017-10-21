//
//  DoCleanupUserDefaults.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

/**
 Removes all keys in the userdefaults starting with the given prefix.
 */
public final class DoCleanupUserDefaults: OOExecutable {
    
    // MARK: - init

    public init(prefix: OOString, userDefaults: UserDefaults = UserDefaults.standard) {
        self.userDefaults = userDefaults
        self.prefix = prefix
    }

    // MARK: - protocol: OOExecutable
    
    public func execute() {
        let allKeys = Array(userDefaults.dictionaryRepresentation().keys)
        let prefixValue = prefix.value
        let ownKeys = allKeys.filter { $0.hasPrefix(prefixValue) }
        ownKeys.forEach { userDefaults.removeObject(forKey: $0) }
    }
    
    // MARK: - private
    
    private let userDefaults: UserDefaults
    private let prefix: OOString
    
}

// convenience initializer
public extension DoCleanupUserDefaults {
    
    public convenience init(prefix: String, userDefaults: UserDefaults = UserDefaults.standard) {
        self.init(prefix: StringConst(prefix), userDefaults: userDefaults)
    }
    
}
