//
//  DoRegularly.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import Foundation
import OOBase

/**
 Repeats a given executable.
 */
public final class DoRegularly: OOExecutable {
    
    // MARK: init

    /**
     @param doAtNullSecondsToo: event will be triggered immediately and after that every timeintervall
     */
    public init(everySeconds seconds: TimeInterval, do action: OOExecutable, doAtNullSecondsToo: Bool = false) {
        self.seconds = seconds
        self.action = action
        self.doAtNullSecondsToo = doAtNullSecondsToo
    }

    deinit {
        timer?.invalidate()
        guard timer == nil else { return }
    }
    
    // MARK: protocol OOExecutable
    
    public func execute() {
        guard timer == nil else { fatalError("Starting a regularly event twice is not allowed!") }
        if doAtNullSecondsToo {
            action.execute()
        }
        timer = .scheduledTimer(withTimeInterval: seconds, repeats: true) { [weak self] _ in
            self?.action.execute()
        }
    }
    
    // MARK: private
    
    private let seconds: TimeInterval
    private let action: OOExecutable
    private let doAtNullSecondsToo: Bool
    private weak var timer: Timer?
    
}
