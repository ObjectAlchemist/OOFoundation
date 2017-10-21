//
//  DoWritableDataRemove.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class DoWritableDataRemove: OOExecutable {
    
    // MARK: - init
    
    public init(_ target: OOWritableData) {
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.remove()
    }
    
    // MARK: - private
    
    private let target: OOWritableData
    
}
