//
//  AttributedStringConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation

public final class AttributedStringConst: OOAttributedStringWrap {
    
    public init(_ value: NSAttributedString = NSAttributedString(string: "")) {
        super.init(origin: WritableAttributedStringMemory(value))
    }
    
}
