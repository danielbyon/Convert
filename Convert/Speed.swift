//
//  Speed.swift
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

public struct Speed: Convertible {

    public enum Unit: Double {
        case meterPerSecond = 1.0
        case milePerHour = 2.236_94
        case footPerSecond = 3.280_84
        case kilometerPerHour = 3.6
        case knot = 1.943_84
    }

    public let value: Double
    public let unit: Unit

    public init(value: Double, unit: Unit) {
        self.value = value
        self.unit = unit
    }

}

public extension Double {

    public var meterPerSecond: Speed {
        return Speed(value: self, unit: .meterPerSecond)
    }

    public var milePerHour: Speed {
        return Speed(value: self, unit: .milePerHour)
    }

    public var footPerSecond: Speed {
        return Speed(value: self, unit: .footPerSecond)
    }

    public var kilometerPerHour: Speed {
        return Speed(value: self, unit: .kilometerPerHour)
    }

    public var knot: Speed {
        return Speed(value: self, unit: .knot)
    }

}
