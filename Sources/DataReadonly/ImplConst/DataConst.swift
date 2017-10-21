//
//  DataConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation

public final class DataConst: OODataWrap {
    
    public init(_ value: Data) {
        super.init(origin: WritableDataMemory(value))
    }
    
}
