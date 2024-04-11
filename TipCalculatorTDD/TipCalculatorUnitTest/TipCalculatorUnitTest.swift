//
//  TipCalculatorUnitTest.swift
//  TipCalculatorUnitTest
//
//  Created by Cause I'm Electric on 4/10/24.
//

import XCTest

class whenCalculatingTipBasedOnTotalAmount: XCTestCase {

    func testShouldCalculateTipSuccessfully() {
        let tipCalculator = TipCalculator()
        let tip = tipCalculator.calculate(total: 100, tipPercentage: 0.1)
        XCTAssertEqual(10, tip)
    }
}

class whenCalculatingTipBasedOnNegativeTotalAmount: XCTestCase {
    
    func testShouldThrowInvalidInputException() {
        let tipCalculator = TipCalculator()
        XCTAssertThrowsError(try tipCalculator.calculate(total: -100, tipPercentage: 0.1), "") { error in
            XCTAssertEqual(error as! TipCalculatorError, TipCalculatorError.invalidInput)
        }
    }
    
}
