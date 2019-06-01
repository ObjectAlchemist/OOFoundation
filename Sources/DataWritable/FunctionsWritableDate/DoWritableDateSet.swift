//
//  DoWritableDateSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase
import Foundation

public final class DoWritableDateSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OODate, to target: OOWritableDate) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OODate
    private let target: OOWritableDate
    
}

// convenience initializer
public extension DoWritableDateSet {
    
    convenience init(_ source: Date, to target: OOWritableDate) {
        self.init(DateConst(source), to: target)
    }
    
}
