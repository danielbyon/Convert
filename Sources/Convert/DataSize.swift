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
import CoreGraphics

public struct DataSize: Convertible {

    public enum Unit: Double {
        case bit = 0.000_001
        case byte = 0.000_008
        case kilobit = 0.001
        case kilobyte = 0.008
        case megabit = 1.0
        case megabyte = 8.0
        case gigabit = 1_000.0
        case gigabyte = 8_000.0
        case terabit = 1_000_000.0
        case terabyte = 8_000_000.0
        case petabit = 1_000_000_000.0
        case petabyte = 8_000_000_000.0
    }

    public let value: Double
    public let unit: Unit

    public init(value: Double, unit: Unit) {
        self.value = value
        self.unit = unit
    }

}

public extension Double {

    var bit: DataSize {
        return DataSize(value: self, unit: .bit)
    }

    var byte: DataSize {
        return DataSize(value: self, unit: .byte)
    }

    var kilobit: DataSize {
        return DataSize(value: self, unit: .kilobit)
    }

    var kilobyte: DataSize {
        return DataSize(value: self, unit: .kilobyte)
    }

    var megabit: DataSize {
        return DataSize(value: self, unit: .megabit)
    }

    var megabyte: DataSize {
        return DataSize(value: self, unit: .megabyte)
    }

    var gigabit: DataSize {
        return DataSize(value: self, unit: .gigabit)
    }

    var gigabyte: DataSize {
        return DataSize(value: self, unit: .gigabyte)
    }

    var terabit: DataSize {
        return DataSize(value: self, unit: .terabit)
    }

    var terabyte: DataSize {
        return DataSize(value: self, unit: .terabyte)
    }

    var petabit: DataSize {
        return DataSize(value: self, unit: .petabit)
    }

    var petabyte: DataSize {
        return DataSize(value: self, unit: .petabyte)
    }
    
}

public extension CGFloat {

    var bit: DataSize {
        return DataSize(value: Double(self), unit: .bit)
    }

    var byte: DataSize {
        return DataSize(value: Double(self), unit: .byte)
    }

    var kilobit: DataSize {
        return DataSize(value: Double(self), unit: .kilobit)
    }

    var kilobyte: DataSize {
        return DataSize(value: Double(self), unit: .kilobyte)
    }

    var megabit: DataSize {
        return DataSize(value: Double(self), unit: .megabit)
    }

    var megabyte: DataSize {
        return DataSize(value: Double(self), unit: .megabyte)
    }

    var gigabit: DataSize {
        return DataSize(value: Double(self), unit: .gigabit)
    }

    var gigabyte: DataSize {
        return DataSize(value: Double(self), unit: .gigabyte)
    }

    var terabit: DataSize {
        return DataSize(value: Double(self), unit: .terabit)
    }

    var terabyte: DataSize {
        return DataSize(value: Double(self), unit: .terabyte)
    }

    var petabit: DataSize {
        return DataSize(value: Double(self), unit: .petabit)
    }

    var petabyte: DataSize {
        return DataSize(value: Double(self), unit: .petabyte)
    }
    
}
