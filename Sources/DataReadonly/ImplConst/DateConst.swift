//
//  DateConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation

public final class DateConst: OODateWrap {
    
    public init(_ value: Date) {
        super.init(origin: WritableDateMemory(value))
    }
    
}

