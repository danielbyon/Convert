//
//  Time.swift
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

public struct Time: Convertible {

    public enum Unit: Double {
        case nanosecond = 0.000_000_001
        case microsecond = 0.000_001
        case millisecond = 0.001
        case centisecond = 0.01
        case second = 1.0
        case minute = 60.0
        case hour = 3_600.0
        case day = 86_400.0
        case week = 604_800.0
        case fortnight = 1_209_600.0
        case month = 2_629_822.965_84
        case year = 31_536_000.0
        case decade = 315_360_000.0
        case century = 3_153_600_000.0
        case millennium = 31_536_000_000.0
    }

    public let value: Double
    public let unit: Unit

    public init(value: Double, unit: Unit) {
        self.value = value
        self.unit = unit
    }

}

public extension Double {

    public var nanosecond: Time {
        return Time(value: self, unit: .nanosecond)
    }

    public var microsecond: Time {
        return Time(value: self, unit: .microsecond)
    }

    public var millisecond: Time {
        return Time(value: self, unit: .millisecond)
    }

    public var centisecond: Time {
        return Time(value: self, unit: .centisecond)
    }

    public var second: Time {
        return Time(value: self, unit: .second)
    }

    public var minute: Time {
        return Time(value: self, unit: .minute)
    }

    public var hour: Time {
        return Time(value: self, unit: .hour)
    }

    public var day: Time {
        return Time(value: self, unit: .day)
    }

    public var week: Time {
        return Time(value: self, unit: .week)
    }

    public var fortnight: Time {
        return Time(value: self, unit: .fortnight)
    }

    public var month: Time {
        return Time(value: self, unit: .month)
    }

    public var year: Time {
        return Time(value: self, unit: .year)
    }

    public var decade: Time {
        return Time(value: self, unit: .decade)
    }

    public var century: Time {
        return Time(value: self, unit: .century)
    }

    public var millennium: Time {
        return Time(value: self, unit: .millennium)
    }

}
