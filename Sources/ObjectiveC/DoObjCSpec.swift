//
//  DoObjCSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
import OOBase
@testable import OOFoundation

final class DoObjCSpec: XCTestCase {

    func testGIVEN_ADecoratedExecutable_WHEN_TriggerExecute_THEN_OriginalExecutableIsTriggered() {
        // GIVEN
        var called = false
        let origin = OOExecutableFake({ called = true })
        let object = DoObjC(origin)
        // WHEN
        object.perform(#selector(DoObjC.execute))
        // THEN
        XCTAssertTrue(called)
    }

}
