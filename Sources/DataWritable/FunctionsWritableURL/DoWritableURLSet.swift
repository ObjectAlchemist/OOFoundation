//
//  DoWritableURLSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase
import Foundation

public final class DoWritableURLSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOURL, to target: OOWritableURL) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OOURL
    private let target: OOWritableURL
    
}

// convenience initializer
public extension DoWritableURLSet {
    
    public convenience init(_ source: URL, to target: OOWritableURL) {
        self.init(URLConst(source), to: target)
    }
    
}
