//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Jan Marten Sevenster on 23/02/2018.
//  Copyright © 2018 John Appleseed. All rights reserved.
//

import Foundation

// Defining a stucture that can contain all properties needed for a question

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

// Defining a stucture that can contain all properties needed for an answer

struct Answer {
    var text: String
    var type: Shape
}

// List all possible outcomes to the quiz

enum Shape: Character {
    case circle = "●", square = "◼︎", triangle = "▼", irregularPentagon = "☗"
    
    var definition: String {
        switch self {
        case .circle:
            return "You are somewhat weird and even a little unlikeable"
        case .square:
            return "You have several personality issues, help is advisable"
        case .triangle:
            return "Good news, you are completey one-dimensional, there is nothing remarkable about you"
        case .irregularPentagon:
            return "Life is obscure and unperdictable, so are you"
        }
    }
}
