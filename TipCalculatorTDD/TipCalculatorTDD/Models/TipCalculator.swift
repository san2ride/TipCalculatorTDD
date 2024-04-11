//
//  TipCalculator.swift
//  TipCalculatorTDD
//
//  Created by Cause I'm Electric on 4/10/24.
//

import Foundation

enum TipCalculatorError: Error {
    case invalidInput
}

class TipCalculator {
    func calculate(total: Double, tipPercentage: Double) throws -> Double {
        
        if total < 0 {
            throw TipCalculatorError.invalidInput
        }
        return total * tipPercentage
    }
}
