//
//  MainViewController.swift
//  Capitals & Countries Quiz
//
//  Created by Ramy on 10/16/18.
//  Copyright © 2018 Ramy. All rights reserved.
//

import UIKit
import TransitionButton
class MainViewController: CustomTransitionViewController {
  
    
    @IBOutlet weak var ButtonOne: TransitionButton!
    @IBOutlet weak var ButtonTwo: TransitionButton!
    @IBOutlet weak var ButtonThree: TransitionButton!
    @IBOutlet weak var ButtonFour: TransitionButton!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    let allQuestions = QuestionBank()
    var pickedAnswer: String = ""
    var firstAnswerIndicator: Int = 0
    var scoreCounter: Int = 0
    var questionNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
         updateUi()
        ButtonOne.cornerRadius = 10
        ButtonTwo.cornerRadius = 10
        ButtonThree.cornerRadius = 10
        ButtonFour.cornerRadius = 10
    }

    
    @IBAction func AnswerButtonPressed(_ sender: TransitionButton) {
        let button = sender as TransitionButton
        switch (sender){
        case ButtonOne:
              pickedAnswer = (ButtonOne.titleLabel?.text)!
            break
        case ButtonTwo:
            pickedAnswer = (ButtonTwo.titleLabel?.text)!
            break
        case ButtonThree:
            pickedAnswer = (ButtonThree.titleLabel?.text)!
            break
        case ButtonFour:
            pickedAnswer = (ButtonFour.titleLabel?.text)!
            break
        default:
            break
        }
        button.startAnimation()
        let qualityOfServiceClass = DispatchQoS.QoSClass.background
        let backgroundQueue = DispatchQueue.global(qos: qualityOfServiceClass)
        backgroundQueue.async(execute: {
            
            if self.checkAnswer(){
                if self.firstAnswerIndicator == 0 {
                    self.scoreCounter += 1
                }
            DispatchQueue.main.async(execute: { () -> Void in
                
                button.stopAnimation(animationStyle: .normal, completion: {
                    self.questionNumber = self.questionNumber + 1
                    self.updateUi()
                })
              })
                
                
                
            }
            else{
                
                DispatchQueue.main.async(execute: { () -> Void in
                    button.stopAnimation(animationStyle: .shake, completion: {
                        
                    })
                })
                
                
            }
        })
        
           
}
    
    
    

 
    func checkAnswer() -> Bool{
        if pickedAnswer == allQuestions.list[questionNumber].correctAnswer
        {
            ProgressHUD.showSuccess("Corect!")
            return true
        }
        else{
            firstAnswerIndicator = 1
            return false
        }
    }
    func updateUi(){
        if firstAnswerIndicator == 0 {
//            scoreCounter += 1
           scoreLabel.text = "Score: \(scoreCounter)"
        }
        progressLabel.text = "\(questionNumber + 1)/10"
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber + 1)
        firstAnswerIndicator = 0
        nextQuestion()
        
    }
    func nextQuestion(){
        if questionNumber <= 9{
         questionLabel.text = allQuestions.list[questionNumber].questionText
         ButtonOne.setTitle(allQuestions.list[questionNumber].answer1, for: UIControlState.normal)
         ButtonTwo.setTitle(allQuestions.list[questionNumber].answer2, for: UIControlState.normal)
         ButtonThree.setTitle(allQuestions.list[questionNumber].answer3, for: UIControlState.normal)
         ButtonFour.setTitle(allQuestions.list[questionNumber].answer4, for: UIControlState.normal)
        }
        else{
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { UIAlertAction in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func startOver(){
        questionNumber = 0
        scoreCounter = 0
        updateUi()
    }
    

    
    
    
    
    
    

}
















