//
//  StringFromTemplateSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
import OOBase
@testable import OOFoundation

final class StringFromTemplateSpec: XCTestCase {

    func testGIVEN_ATemplateAndTwoValues_WHEN_GetValue_THEN_ConstrcutedStringIsReturned() {
        // GIVEN
        let object = StringFromTemplate(OOStringFake("values=(%@, %@)"), values: ["value1", "value2"])
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, "values=(value1, value2)")
    }

}
