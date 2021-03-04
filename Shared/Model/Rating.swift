//
//  Rating.swift
//  Trekr2.0
//
//  Created by Li, Muchen on 2021/3/3.
//

import Foundation

enum Rating: String, Decodable  {
    case five = "⭐️⭐️⭐️⭐️⭐️"
    case four = "⭐️⭐️⭐️⭐️"
    case three = "⭐️⭐️⭐️"
    case two = "⭐️⭐️"
    case one = "⭐️"
}

let noSpecifiedPriorityLevel = "None"
