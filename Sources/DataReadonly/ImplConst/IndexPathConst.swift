//
//  IndexPathConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation

public final class IndexPathConst: OOIndexPathWrap {
    
    public init(_ value: IndexPath) {
        super.init(origin: WritableIndexPathMemory(value))
    }
    
}
