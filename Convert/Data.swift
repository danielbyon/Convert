//
//  Data.swift
//  Convert
//
//  Copyright © 2017 Daniel Byon
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

public struct Data: Convertible {

    public enum Unit: Double {
        case bit = 1_000_000.0
        case kilobit = 1_000.0
        case kilobyte = 125.0
        case megabit = 1.0
        case megabyte = 0.125
        case gigabit = 0.001
        case gigabyte = 0.000_125
        case terabit = 0.000_001
        case terabyte = 0.000_000_125
        case petabit = 0.000_000_001
        case petabyte = 0.000_000_000_125
    }

    public let value: Double
    public let unit: Unit

    public init(value: Double, unit: Unit) {
        self.value = value
        self.unit = unit
    }

}

public extension Double {

    public var bit: Data {
        return Data(value: self, unit: .bit)
    }

    public var kilobit: Data {
        return Data(value: self, unit: .kilobit)
    }

    public var kilobyte: Data {
        return Data(value: self, unit: .kilobyte)
    }

    public var megabit: Data {
        return Data(value: self, unit: .megabit)
    }

    public var megabyte: Data {
        return Data(value: self, unit: .megabyte)
    }

    public var gigabit: Data {
        return Data(value: self, unit: .gigabit)
    }

    public var gigabyte: Data {
        return Data(value: self, unit: .gigabyte)
    }

    public var terabit: Data {
        return Data(value: self, unit: .terabit)
    }

    public var terabyte: Data {
        return Data(value: self, unit: .terabyte)
    }

    public var petabit: Data {
        return Data(value: self, unit: .petabit)
    }

    public var petabyte: Data {
        return Data(value: self, unit: .petabyte)
    }
    
}
