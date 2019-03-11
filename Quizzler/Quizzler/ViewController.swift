//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var currentQuestionID: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if (sender.tag == 1) {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        
        checkAnswer()
        currentQuestionID += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(currentQuestionID+1) / \(allQuestions.list.count)"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(currentQuestionID+1)
    }

    func nextQuestion() {
        if (currentQuestionID < allQuestions.list.count) {
            questionLabel.text = allQuestions.list[currentQuestionID].questionText
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "Quiz completed! Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        let expectedAnswer = allQuestions.list[currentQuestionID].answer
        if (expectedAnswer == pickedAnswer) {
            score += 1
            ProgressHUD.showSuccess("Correct")
            updateUI()
        }
        else {
            ProgressHUD.showError("Incorrect")
        }
    }
    
    
    func startOver() {
        currentQuestionID = 0
        scoreLabel.text = "Score: 0"
        score = 0
        nextQuestion()
    }
    

    
}
