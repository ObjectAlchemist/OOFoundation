//
//  DoWritableAttributedStringSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase
import Foundation

public final class DoWritableAttributedStringSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOAttributedString, to target: OOWritableAttributedString) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OOAttributedString
    private let target: OOWritableAttributedString
    
}

// convenience initializer
public extension DoWritableAttributedStringSet {
    
    convenience init(_ source: NSAttributedString, to target: OOWritableAttributedString) {
        self.init(AttributedStringConst(source), to: target)
    }
    
}
