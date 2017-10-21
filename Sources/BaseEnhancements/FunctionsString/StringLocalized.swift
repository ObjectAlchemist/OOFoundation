//
//  StringLocalized.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

public final class StringLocalized: OOString {
    
    // MARK: - init
    
    public init(_ identifier: OOString, from fileName: OOString, bundle: Bundle = Bundle.main) {
        self.identifier = identifier
        self.fileName = fileName
        self.bundle = bundle
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        return bundle.localizedString(forKey: identifier.value, value: nil, table: fileName.value)
    }

    // MARK: - private
    
    private let identifier: OOString
    private let fileName: OOString
    private let bundle: Bundle
    
}

// convenience initializer
public extension StringLocalized {
    
    public convenience init(_ identifier: String, from fileName: String, bundle: Bundle = Bundle.main) {
        self.init(StringConst(identifier), from: StringConst(fileName), bundle: bundle)
    }
    
    public convenience init(_ identifier: OOString, from fileName: String, bundle: Bundle = Bundle.main) {
        self.init(identifier, from: StringConst(fileName), bundle: bundle)
    }
    
    public convenience init(_ identifier: String, from fileName: OOString, bundle: Bundle = Bundle.main) {
        self.init(StringConst(identifier), from: fileName, bundle: bundle)
    }
    
}
