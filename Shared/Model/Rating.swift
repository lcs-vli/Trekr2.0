//
//  Rating.swift
//  travelDiary
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
    case zero = " "
}

let noSpecifiedPriorityLevel = "None"
