//
//  DoObjC.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

/**
 This implementation encapsulates an executable in an object derived from NSObject. This is needed for some apple apis.
 E.g. Setting an OOExecutable as target of an UIButton is not possible, because the protocol is not NSObject compliant:
    button.addTarget(executable, action: #selector(Executable.execute), for: .touchUpInside) -> Build error
 Solution: Decorate it with this object like that:
    let objcExecutable = DoObjC(executable)
    button.addTarget(objcExecutable, action: #selector(DOObjC.execute), for: .touchUpInside)
 Attention: Do not forget to hold objcExecutable strong in your class! Else it will fail because the target is not owned by UIButton!
 */
public final class DoObjC: NSObject, OOExecutable {
    
    // MARK: - init
    
    // This initializer is required when deriving from NSObject, but we do not allow to use it!
    override init() {
        fatalError("Not supported!")
    }
    
    public init(_ origin: OOExecutable) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOExecutable
    
    @objc public func execute() {
        origin.execute()
    }
    
    // MARK: - private
    
    private let origin: OOExecutable
    
}
