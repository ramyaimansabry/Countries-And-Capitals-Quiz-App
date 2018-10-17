
//
//  QuestionBank.swift
//  Capitals & Countries Quiz
//
//  Created by Ramy on 10/16/18.
//  Copyright © 2018 Ramy. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var list = [Question]()
    
    init() {
        list.append(Question(question: "Amsterdam", firstOption: "Netherlands", SecandOption: "Jaban", ThirdOption: "Canada",FourthOption: "Philippines", CorrectAnswer: "Netherlands"))
        
        list.append(Question(question: "Bangkok", firstOption: "India", SecandOption: "Thailand", ThirdOption: "Argentina", FourthOption: "United Kingdom", CorrectAnswer: "Thailand"))
        
        list.append(Question(question: "Jakatra", firstOption: "Australia", SecandOption: "Indonesia", ThirdOption: "Jaban", FourthOption: "India", CorrectAnswer: "Indonesia"))
        
        list.append(Question(question: "Vienna", firstOption: "Belgium", SecandOption: "Thailan", ThirdOption: "United Kingdom", FourthOption: "Austria", CorrectAnswer: "Austria"))
        
        list.append(Question(question: "Amsterdam", firstOption: "Jaban", SecandOption: "Canada", ThirdOption: "Netherlands", FourthOption: "Philippines" , CorrectAnswer: "Netherlands"))
        
        list.append(Question(question: "London", firstOption: "United Kingdom", SecandOption: "Cuba", ThirdOption: "Turky", FourthOption: "Spain", CorrectAnswer: "United Kingdom"))
        
        list.append(Question(question: "Berlin", firstOption: "Swedan", SecandOption: "Germany", ThirdOption: "Russia", FourthOption: "Iraq", CorrectAnswer: "Germany"))
        
        list.append(Question(question: "Prague", firstOption: "United States of America", SecandOption: "Italy", ThirdOption: "Czech Republic", FourthOption: "Netherlands", CorrectAnswer: "Czech Republic"))
        
        list.append(Question(question: "Havana", firstOption: "Egypt", SecandOption: "Swedan", ThirdOption: "Iraq", FourthOption: "Cuba", CorrectAnswer: "Cuba"))
        
        list.append(Question(question: "Brasilia", firstOption: "Pakistan", SecandOption: "South Korea", ThirdOption: "Czech Republic", FourthOption: "Beazil", CorrectAnswer: "Beazil"))
        
        
    }
    
    
}
