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
import CoreGraphics

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
        case month = 2_592_000.0
        case year = 315_569_52.0
        case decade = 315_569_520.0
        case century = 315_569_520_0.0
        case millennium = 315_576_000_00.0
    }

    public let value: Double
    public let unit: Unit

    public init(value: Double, unit: Unit) {
        self.value = value
        self.unit = unit
    }

}

public extension Double {

    var nanosecond: Time {
        return Time(value: self, unit: .nanosecond)
    }

    var microsecond: Time {
        return Time(value: self, unit: .microsecond)
    }

    var millisecond: Time {
        return Time(value: self, unit: .millisecond)
    }

    var centisecond: Time {
        return Time(value: self, unit: .centisecond)
    }

    var second: Time {
        return Time(value: self, unit: .second)
    }

    var minute: Time {
        return Time(value: self, unit: .minute)
    }

    var hour: Time {
        return Time(value: self, unit: .hour)
    }

    var day: Time {
        return Time(value: self, unit: .day)
    }

    var week: Time {
        return Time(value: self, unit: .week)
    }

    var fortnight: Time {
        return Time(value: self, unit: .fortnight)
    }

    var month: Time {
        return Time(value: self, unit: .month)
    }

    var year: Time {
        return Time(value: self, unit: .year)
    }

    var decade: Time {
        return Time(value: self, unit: .decade)
    }

    var century: Time {
        return Time(value: self, unit: .century)
    }

    var millennium: Time {
        return Time(value: self, unit: .millennium)
    }

}

public extension CGFloat {

    var nanosecond: Time {
        return Time(value: Double(self), unit: .nanosecond)
    }

    var microsecond: Time {
        return Time(value: Double(self), unit: .microsecond)
    }

    var millisecond: Time {
        return Time(value: Double(self), unit: .millisecond)
    }

    var centisecond: Time {
        return Time(value: Double(self), unit: .centisecond)
    }

    var second: Time {
        return Time(value: Double(self), unit: .second)
    }

    var minute: Time {
        return Time(value: Double(self), unit: .minute)
    }

    var hour: Time {
        return Time(value: Double(self), unit: .hour)
    }

    var day: Time {
        return Time(value: Double(self), unit: .day)
    }

    var week: Time {
        return Time(value: Double(self), unit: .week)
    }

    var fortnight: Time {
        return Time(value: Double(self), unit: .fortnight)
    }

    var month: Time {
        return Time(value: Double(self), unit: .month)
    }

    var year: Time {
        return Time(value: Double(self), unit: .year)
    }

    var decade: Time {
        return Time(value: Double(self), unit: .decade)
    }

    var century: Time {
        return Time(value: Double(self), unit: .century)
    }

    var millennium: Time {
        return Time(value: Double(self), unit: .millennium)
    }

}
