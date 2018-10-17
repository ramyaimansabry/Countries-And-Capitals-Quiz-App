//
//  Question.swift
//  Capitals & Countries Quiz
//
//  Created by Ramy on 10/16/18.
//  Copyright © 2018 Ramy. All rights reserved.
//

import Foundation


class Question{
    
    let questionText: String
    let answer1: String
    let answer2: String
    let answer3: String
    let answer4: String
    let correctAnswer: String
    
    
    init(question: String,firstOption: String, SecandOption: String, ThirdOption: String,FourthOption: String, CorrectAnswer: String){
        questionText = question
        answer1 = firstOption
        answer2 = SecandOption
        answer3 = ThirdOption
        answer4 = FourthOption
        correctAnswer = CorrectAnswer
    }
}


