//
//  Month.swift
//  TimeKit
//
//  Created by hirano masaki on 2019/01/23.
//

import Foundation

/// `Month` is a unit of time representing month without a TimeZone.
public struct Month: Hashable, Codable, ReferenceDateStrideable {
    
    public var intervalSinceReferenceDate: Double
    
    public init(intervalSinceReferenceDate: Double) {
        self.intervalSinceReferenceDate = intervalSinceReferenceDate
    }
}

extension Month: CustomStringConvertible {
    
    public var description: String {
        return "\(DateFormatter.monthFormatter.string(from: self)) in gregorian calendar"
    }
}
