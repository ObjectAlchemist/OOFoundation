//
//  DoWritableURLRemove.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class DoWritableURLRemove: OOExecutable {
    
    // MARK: - init
    
    public init(_ target: OOWritableURL) {
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.remove()
    }
    
    // MARK: - private
    
    private let target: OOWritableURL
    
}
