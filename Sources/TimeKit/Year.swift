//
//  Year.swift
//  TimeKit
//
//  Created by hirano masaki on 2019/01/23.
//

import Foundation

/// `Year` is a unit of time representing year without a TimeZone.
public struct Year: Hashable, Codable, ReferenceDateStrideable {
    
    public var intervalSinceReferenceDate: Double
    
    public init(intervalSinceReferenceDate: Double) {
        self.intervalSinceReferenceDate = intervalSinceReferenceDate
    }
}

extension Year: CustomStringConvertible {
    
    public var description: String {
        return "\(DateFormatter.yearFormatter.string(from: self)) in gregorian calendar"
    }
}
