//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Lesley Lopez on 3/26/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quiz = [
        Questions(q: "Which is the largest organ in the human body?", o: ["Heart", "Skin", "Large Intestine"], a: "Skin"),
        Questions(q: "Five dollars is worth how many nickels?", o: ["25", "50", "100"], a: "100"),
        Questions(q: "What do the letters in the GMT time zone stand for?", o: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], a: "Greenwich Mean Time"),
        Questions(q: "What is the French word for 'hat'?", o: ["Chapeau", "Écharpe", "Bonnet"], a: "Chapeau"),
        Questions(q: "In past times, what would a gentleman keep in his fob pocket?", o: ["Notebook", "Handkerchief", "Watch"], a: "Watch"),
        Questions(q: "How would one say goodbye in Spanish?", o: ["Au Revoir", "Adiós", "Salir"], a: "Adiós"),
        Questions(q: "Which of these colours is NOT featured in the logo for Google?", o: ["Green", "Orange", "Blue"], a: "Orange"),
        Questions(q: "What alcoholic drink is made from molasses?", o: ["Rum", "Whisky", "Gin"], a: "Rum"),
        Questions(q: "What type of animal was Harambe?", o: ["Panda", "Gorilla", "Crocodile"], a: "Gorilla"),
        Questions(q: "Where is Tasmania located?", o: ["Indonesia", "Australia", "Scotland"], a: "Australia")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) ->Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        }else{
            return false
        }
    }
    
    func getScore() -> Int{
        return score
       }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getOptionText(i:Int) ->String {
        return quiz[questionNumber].options[i]
    }
    
    func getProgress() -> Float{
        return Float(questionNumber)/Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
        
    }
    
}
