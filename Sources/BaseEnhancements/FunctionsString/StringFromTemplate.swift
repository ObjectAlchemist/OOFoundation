//
//  StringFromTemplate.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import OOBase

public final class StringFromTemplate: OOString {
    
    // MARK: - init

    public init(_ template: OOString, values: [OOString]) {
        self.template = template
        self.values = values
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        return String(format: template.value, arguments: values.map { $0.value })
    }
    
    // MARK: - private
    
    private let template: OOString
    private let values: [OOString]
    
}

// convenience initializer
public extension StringFromTemplate {
    
    convenience init(_ template: String, value: String) {
        self.init(StringConst(template), values: [StringConst(value)])
    }
    
    convenience init(_ template: OOString, value: String) {
        self.init(template, values: [StringConst(value)])
    }
    
    convenience init(_ template: String, value: OOString) {
        self.init(StringConst(template), values: [value])
    }
    
    convenience init(_ template: OOString, value: OOString) {
        self.init(template, values: [value])
    }
    
    convenience init(_ template: String, values: [String]) {
        self.init(StringConst(template), values: values.map { StringConst($0) } )
    }
    
    convenience init(_ template: String, values: [OOString]) {
        self.init(StringConst(template), values: values )
    }
    
    convenience init(_ template: OOString, values: [String]) {
        self.init(template, values: values.map { StringConst($0) } )
    }
    
}
