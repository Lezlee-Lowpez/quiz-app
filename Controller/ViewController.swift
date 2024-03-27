//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var thirdLabel: UIButton!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var progressLabel: UIProgressView!
    @IBOutlet weak var falseLabel: UIButton!
    @IBOutlet weak var trueLabel: UIButton!
    @IBOutlet weak var questionText: UILabel!
    
    // here we call in the structure 
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    
    @IBAction func trueFalsebutton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        
        if userGotItRight{
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self , selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func updateUI(){
        
        //NEW QUESTION
        questionText.text = quizBrain.getQuestionText()
        
        //SCORE AND PROGRESS BAR
        score.text = "Score:\(quizBrain.getScore())"
        progressLabel.progress = quizBrain.getProgress()
        
        
        //BUTTONS
        trueLabel.setTitle("\(quizBrain.getOptionText(i: 0))", for: .normal)
        falseLabel.setTitle("\(quizBrain.getOptionText(i: 1))", for: .normal)
        thirdLabel.setTitle("\(quizBrain.getOptionText(i: 2))", for: .normal)
        
        
        trueLabel.backgroundColor = UIColor.clear
        falseLabel.backgroundColor = UIColor.clear
        thirdLabel.backgroundColor = UIColor.clear
    }
    
}

