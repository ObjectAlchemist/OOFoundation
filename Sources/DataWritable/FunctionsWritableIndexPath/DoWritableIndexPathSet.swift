//
//  DoWritableIndexPathSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase
import Foundation

public final class DoWritableIndexPathSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOIndexPath, to target: OOWritableIndexPath) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OOIndexPath
    private let target: OOWritableIndexPath
    
}

// convenience initializer
public extension DoWritableIndexPathSet {
    
    public convenience init(_ source: IndexPath, to target: OOWritableIndexPath) {
        self.init(IndexPathConst(source), to: target)
    }
    
}
