//
//  GameManager.swift
//  EnhanceQuizStarter
//
//  Created by Mike Conner on 11/3/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

class QuizManager {
    
// Create variables and constants
// Create an instance of QuizManager that is of type Quiz
var quizManager = Quiz()
// Create a variable to track how many questions have been asked.
var numberOfQuestionsAsked: Int = 0
// Create a variable to determine how many questions in total will be asked during the quiz
let numberOfQuestionsPerQuiz: Int = 5
// Create a variable to track number of correct answers
var numberOfQuestionsAnsweredCorrectly: Int = 0
// Create a variable to track number of incorrect answers
var numberOfQuestionsAnsweredIncorrectly: Int = 0
    
    
/// Functions for managing the game
    
    // Shuffle the question list so that the questions are different each time the quiz is taken
    func createQuizList() {
        quizManager.questionList = quizManager.questionList.shuffled()
    }
   
}
