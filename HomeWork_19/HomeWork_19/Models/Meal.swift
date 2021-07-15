//
//  Meal.swift
//  HomeWork_19
//
//  Created by Uladzimir Kulakou on 7/15/21.
//  Copyright © 2021 Uladzimir Kulakou. All rights reserved.
//

import Foundation
import UIKit

struct Meal {
    
    let name: String
    let image: UIImage
    let notes: String
    
    var rating: Int {
        var retingSum = 0
        feedbacks.forEach { feedback in
            retingSum += feedback.rating
        }
        return retingSum / feedbacks.count
    }
    
    var feedbacks: [Feedback]

    var ratingBar: String {
        String(repeating: "⭐️", count: rating) // control + command + " "
    }
}

struct Feedback {
    let feedback: String
    let date: Date = Date()
    let rating: Int
    
    var currentDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        return dateFormatter.string(from: date)
    }
}
