//
//  DataManager.swift
//  HomeWork_19
//
//  Created by Uladzimir Kulakou on 7/15/21.
//  Copyright © 2021 Uladzimir Kulakou. All rights reserved.
//

import Foundation
class DataManger {
    // MARK: Lifecycle

    private init() {}

    // MARK: Internal

    static let shared = DataManger()

    var meals = [Meal(name: "МакЗавтрак",
                      image:  #imageLiteral(resourceName: <#T##String#>) (resourceName: "FrenchFriesMiddle"), // imageLiteral
                      notes: "Картофель фри",
                      feedbacks: [Feedback(feedback: "Пойдет", rating: 3)]),
                 Meal(name: "Десерты и напитки",
                      image:  #imageLiteral(resourceName: <#T##String#>) (resourceName: "orange_juice_03_450"),
                      notes: "Апельсиновый сок",
                      feedbacks: [Feedback(feedback: "Хороший Сок", rating: 4)]),
                 Meal(name: "Ночное меню",
                      image:  #imageLiteral(resourceName: <#T##String#>) (resourceName: "big_tejstyi_new"),
                      notes: "Биг Тейсти",
                      feedbacks: [Feedback(feedback: "Ну и гадость", rating: 5)])]
}
