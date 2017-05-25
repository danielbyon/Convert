//
//  DataTransferRate.swift
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

public struct DataTransferRate: Convertible {

    public enum Unit: Double {
        case bitPerSecond = 1_000_000.0
        case kilobitPerSecond = 1_000.0
        case kilobytePerSecond = 125.0
        case megabitPerSecond = 1.0
        case megabytePerSecond = 0.125
        case gigabitPerSecond = 0.001
        case gigabytePerSecond = 0.000_125
        case terabitPerSecond = 0.000_001
        case terabytePerSecond = 0.000_000_125
        case petabitPerSecond = 0.000_000_001
        case petabytePerSecond = 0.000_000_000_125
    }

    public let value: Double
    public let unit: Unit

    public init(value: Double, unit: Unit) {
        self.value = value
        self.unit = unit
    }

}

public extension Double {

    public var bitPerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .bitPerSecond)
    }

    public var kilobitPerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .kilobitPerSecond)
    }

    public var kilobytePerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .kilobytePerSecond)
    }

    public var megabitPerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .megabitPerSecond)
    }

    public var megabytePerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .megabytePerSecond)
    }

    public var gigabitPerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .gigabitPerSecond)
    }

    public var gigabytePerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .gigabytePerSecond)
    }

    public var terabitPerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .terabitPerSecond)
    }

    public var terabytePerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .terabytePerSecond)
    }

    public var petabitPerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .petabitPerSecond)
    }

    public var petabytePerSecond: DataTransferRate {
        return DataTransferRate(value: self, unit: .petabytePerSecond)
    }

}
