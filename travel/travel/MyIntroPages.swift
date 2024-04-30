//
//  MyIntroPages.swift
//  foodnation
//
//  Created by Brandon Anderson on 4/22/24.
//

import Foundation
import UIKit

struct MyIntroPages {
    let text: String
    let imageCode: ImageCode
}

enum ImageCode: Int {
    case mealPlan
    case recipeRecommendations
    case routine
    case stash
    case diet
    
    var image: UIImage? {
        switch self {
        case .mealPlan:
            return UIImage(named: "Meal Plan")
        case .recipeRecommendations:
            return UIImage(named: "recipeImage")
        case .routine:
            return UIImage(named: "routineImage")
        case .stash:
            return UIImage(named: "stashImage")
        case .diet:
            return UIImage(named: "dietImage")
        
        }
    }
}

