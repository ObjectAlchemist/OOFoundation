//
//  DoWritableDateRemove.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class DoWritableDateRemove: OOExecutable {
    
    // MARK: - init
    
    public init(_ target: OOWritableDate) {
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.remove()
    }
    
    // MARK: - private
    
    private let target: OOWritableDate
    
}
