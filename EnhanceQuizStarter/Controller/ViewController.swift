//
//  ViewController.swift
//  Quiz
//
//  Created by Mike Conner


import UIKit

class ViewController: UIViewController {
    // Create Variables
    let myQuiz = QuizManager()

    
    // MARK: - Outlets
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var optionAButton: UIButton!
    @IBOutlet weak var optionBButton: UIButton!
    @IBOutlet weak var optionCButton: UIButton!
    @IBOutlet weak var optionDButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    
    // MARK: - Load View
    override func viewDidLoad() {
        super.viewDidLoad()
        myQuiz.createQuizList()
        displayQuestion()
        restartButton.isHidden = true
    }
    
    // MARK: - Actions
    @IBAction func selectedAnswer(_ sender: UIButton) {
        let button = sender as UIButton
        let selectedAnswer: String = button.title(for: .normal)!
        let correctAnswer: String = myQuiz.quizManager.questionList[myQuiz.numberOfQuestionsAsked].correctAnswer
        
        switch button.tag {
        case 1:
            if selectedAnswer == correctAnswer {
                myQuiz.numberOfQuestionsAnsweredCorrectly += 1
                myQuiz.numberOfQuestionsAsked += 1
                displayQuestion()
            } else {
                myQuiz.numberOfQuestionsAnsweredIncorrectly += 1
                myQuiz.numberOfQuestionsAsked += 1
                displayQuestion()
            }
        case 2:
            if selectedAnswer == correctAnswer {
                myQuiz.numberOfQuestionsAnsweredCorrectly += 1
                myQuiz.numberOfQuestionsAsked += 1
                displayQuestion()
            } else {
                myQuiz.numberOfQuestionsAnsweredIncorrectly += 1
                myQuiz.numberOfQuestionsAsked += 1
                displayQuestion()
            }
        case 3:
            if selectedAnswer == correctAnswer {
                myQuiz.numberOfQuestionsAnsweredCorrectly += 1
                myQuiz.numberOfQuestionsAsked += 1
                displayQuestion()
            } else {
                myQuiz.numberOfQuestionsAnsweredIncorrectly += 1
                myQuiz.numberOfQuestionsAsked += 1
                displayQuestion()
            }
        case 4:
            if selectedAnswer == correctAnswer {
                myQuiz.numberOfQuestionsAnsweredCorrectly += 1
                myQuiz.numberOfQuestionsAsked += 1
                displayQuestion()
            } else {
                myQuiz.numberOfQuestionsAnsweredIncorrectly += 1
                myQuiz.numberOfQuestionsAsked += 1
                displayQuestion()
            }
        default:
            print("logic error")
            return
        }
    }
    
    @IBAction func doYouWantToPlayAgain(_ sender: UIButton) {
        restartButton.isHidden = true
        optionAButton.isHidden = false
        optionBButton.isHidden = false
        optionCButton.isHidden = false
        optionDButton.isHidden = false
        myQuiz.numberOfQuestionsAsked = 0
        myQuiz.numberOfQuestionsAnsweredCorrectly = 0
        myQuiz.numberOfQuestionsAnsweredIncorrectly = 0
        myQuiz.createQuizList()
        displayQuestion()
    }
    
    func displayQuestion() {
        if myQuiz.numberOfQuestionsAsked < myQuiz.numberOfQuestionsPerQuiz {
            questionField.text = myQuiz.quizManager.questionList[myQuiz.numberOfQuestionsAsked].question
            optionAButton.setTitle(myQuiz.quizManager.questionList[myQuiz.numberOfQuestionsAsked].listOfAnswers[0], for: .normal)
            optionBButton.setTitle(myQuiz.quizManager.questionList[myQuiz.numberOfQuestionsAsked].listOfAnswers[1], for: .normal)
            optionCButton.setTitle(myQuiz.quizManager.questionList[myQuiz.numberOfQuestionsAsked].listOfAnswers[2], for: .normal)
            optionDButton.setTitle(myQuiz.quizManager.questionList[myQuiz.numberOfQuestionsAsked].listOfAnswers[3], for: .normal)
        } else {
            questionField.text = "Correct: \(myQuiz.numberOfQuestionsAnsweredCorrectly)\nWrong: \(myQuiz.numberOfQuestionsAnsweredIncorrectly)"
            restartButton.isHidden = false
            optionAButton.isHidden = true
            optionBButton.isHidden = true
            optionCButton.isHidden = true
            optionDButton.isHidden = true
        }
        
    }
    
}

