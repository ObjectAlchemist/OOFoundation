//
//  WritableKeyValueUserDefaults.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

typealias DefaultUserDefaults = WritableKeyValueUserDefaults

public final class WritableKeyValueUserDefaults: OOWritableKeyValue {
    
    // MARK: - initialization
    
    public init(userDefaults: UserDefaults = UserDefaults.standard) {
        self.userDefaults = userDefaults
    }
    
    // MARK: - OOWritableKeyValue
    
    public func hasValue(for key: String) -> Bool {
        return userDefaults.object(forKey: key) != nil
    }
    
    public func value(for key: String) -> Any {
        return userDefaults.object(forKey: key)!
    }
    
    public func set(value: Any, for key: String) {
        userDefaults.set(value, forKey: key)
    }
    
    public func remove(key: String) {
        userDefaults.removeObject(forKey: key)
    }
    
    // MARK: - private
    
    private let userDefaults: UserDefaults
    
}
