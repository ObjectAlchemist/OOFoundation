//
//  URLConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation

public final class URLConst: OOURLWrap {
    
    public init(_ value: URL) {
        super.init(origin: WritableURLMemory(value))
    }
    
}
