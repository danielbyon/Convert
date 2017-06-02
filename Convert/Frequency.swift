//
//  Frequency.swift
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

public struct Frequency: Convertible {

    public enum Unit: Double {
        case hertz = 1.0
        case kilohertz = 0.001
        case megahertz = 0.000_001
        case gigahertz = 0.000_000_001
        case degreesPerHour = 1_296_000.0
        case degreesPerMinute = 21_600.0
        case degreesPerSecond = 360.0
        case radiansPerHour = 22_619.467_105_8
        case radiansPerMinute = 376.991_118_431
        case radiansPerSecond = 6.283_185_307_2
        case revolutionsPerHour = 3_600.0
        case revolutionsPerMinute = 60.0
        // revolutionsPerSecond is the same as hertz, but Swift requires enum raw values to be unique
    }

    public let value: Double
    public let unit: Unit

    public init(value: Double, unit: Unit) {
        self.value = value
        self.unit = unit
    }

}

public extension Double {

    public var hertz: Frequency {
        return Frequency(value: self, unit: .hertz)
    }

    public var kilohertz: Frequency {
        return Frequency(value: self, unit: .kilohertz)
    }

    public var megahertz: Frequency {
        return Frequency(value: self, unit: .megahertz)
    }

    public var gigahertz: Frequency {
        return Frequency(value: self, unit: .gigahertz)
    }

    public var degreesPerHour: Frequency {
        return Frequency(value: self, unit: .degreesPerHour)
    }

    public var degreesPerMinute: Frequency {
        return Frequency(value: self, unit: .degreesPerMinute)
    }

    public var degreesPerSecond: Frequency {
        return Frequency(value: self, unit: .degreesPerSecond)
    }

    public var radiansPerHour: Frequency {
        return Frequency(value: self, unit: .radiansPerHour)
    }

    public var radiansPerMinute: Frequency {
        return Frequency(value: self, unit: .radiansPerMinute)
    }

    public var radiansPerSecond: Frequency {
        return Frequency(value: self, unit: .radiansPerSecond)
    }

    public var revolutionsPerHour: Frequency {
        return Frequency(value: self, unit: .revolutionsPerHour)
    }

    public var revolutionsPerMinute: Frequency {
        return Frequency(value: self, unit: .revolutionsPerMinute)
    }

}
