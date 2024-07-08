//
//  TipCalculatorUITests.swift
//  TipCalculatorUITests
//
//  Created by Jason Sanchez on 7/8/24.
//

import XCTest

class when_content_view_is_shown: XCTestCase {

    func test_should_make_sure_that_the_total_text_field_contains_default_value() {
        let app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
        
        let totalTextField = app.textFields["totalTextField"]
        
        XCTAssertEqual(totalTextField.value as! String, "Enter total")
    }
    
    func test_should_make_sure_the_20_percent_default_tip_option_is_selected() {
        let app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
        
        let tipPercenatgeSegmentedControl = app.segmentedControls["tipPercenatgeSegmentedControl"]
        let segmentedControlButton = tipPercenatgeSegmentedControl.buttons.element(boundBy: 1)
        
        XCTAssertEqual(segmentedControlButton.label, "20%")
        XCTAssertTrue(segmentedControlButton.isSelected)
    }
}
