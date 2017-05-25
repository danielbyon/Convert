//
//  Angle.swift
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

public struct Angle: Convertible {

    public enum Unit: Double {
        case degree = 1.0
        case radian = 57.295_8
        case pi = 180.0
        case gradian = 1.111_111_111
        case milliradian = 17.453_3
        case minuteOfArc = 60.0
        case secondOfArc = 3600.0
    }

    public let value: Double
    public var unit: Unit

    public init(value: Double, unit: Unit) {
        self.value = value
        self.unit = unit
    }

}

public extension Double {

    public var degree: Angle {
        return Angle(value: self, unit: .degree)
    }

    public var radian: Angle {
        return Angle(value: self, unit: .radian)
    }

    public var pi: Angle {
        return Angle(value: self, unit: .pi)
    }

    public var gradian: Angle {
        return Angle(value: self, unit: .gradian)
    }

    public var milliradian: Angle {
        return Angle(value: self, unit: .milliradian)
    }

    public var minuteOfArc: Angle {
        return Angle(value: self, unit: .minuteOfArc)
    }

    public var secondOfArc: Angle {
        return Angle(value: self, unit: .secondOfArc)
    }

}
