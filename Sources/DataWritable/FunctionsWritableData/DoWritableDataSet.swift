//
//  DoWritableDataSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase
import Foundation

public final class DoWritableDataSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOData, to target: OOWritableData) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OOData
    private let target: OOWritableData
    
}

// convenience initializer
public extension DoWritableDataSet {
    
    convenience init(_ source: Data, to target: OOWritableData) {
        self.init(DataConst(source), to: target)
    }
    
}
