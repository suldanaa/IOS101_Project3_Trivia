//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Suldana Afrah on 6/21/25.
//

import UIKit
import SwiftUI




class TriviaViewController: UIViewController {
    
    
    let correctQuestionPosition = [1,2,3,4]
    var score = 0
    let limit = 3
    var currentQuestion = 0 //var = changeable
    private var questions = [QuestionScreens]()
    
    @IBOutlet weak var buttonOneUI: UIButton!
    @IBOutlet weak var buttonFourUI: UIButton!
    @IBOutlet weak var buttonThreeUI: UIButton!
    @IBOutlet weak var buttonTwoUI: UIButton!
    
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var questionCategory: UILabel!
    @IBOutlet weak var screenScore: UILabel!
    
    @IBAction func buttonOne(_ sender: UIButton){
        if let title = buttonOneUI.titleLabel?.text {
            if  title == createMockData()[0].correctAns ||
                    title == createMockData()[1].correctAns ||
                    title == createMockData()[2].correctAns{
                if currentQuestion <= limit {
                    score+=1
                }
                screenScore.text = "Score: \(score)"
                print(score)
            }
        }
        
        if currentQuestion < limit {
            configure(with: questions[currentQuestion])
        }
    }
        
    @IBAction func buttonTwo(_ sender: UIButton){
        if let title = buttonTwoUI.titleLabel?.text {
            if  title == createMockData()[0].correctAns ||
                title == createMockData()[1].correctAns ||
                title == createMockData()[2].correctAns{
                if currentQuestion <= limit {
                    score+=1
                }
                screenScore.text = "Score: \(score)"
                print(score)
            }
        }

        if currentQuestion < limit {
            configure(with: questions[currentQuestion])
        }
    }
    @IBAction func buttonThree(_ sender: UIButton){
        if let title = buttonThreeUI.titleLabel?.text {
            if  title == createMockData()[0].correctAns ||
                title == createMockData()[1].correctAns ||
                title == createMockData()[2].correctAns{
                if currentQuestion <= limit {
                    score+=1
                }
                screenScore.text = "Score: \(score)"
                print(score)
            }
        }

        if currentQuestion < limit {
            configure(with: questions[currentQuestion])
        }
    }
    @IBAction func buttonFour(_ sender: UIButton){
        if let title = buttonFourUI.titleLabel?.text {
            if  title == createMockData()[0].correctAns ||
                title == createMockData()[1].correctAns ||
                title == createMockData()[2].correctAns{
                if currentQuestion <= limit {
                    score+=1
                }
//                screenScore.text = "Score: \(score)"
                print(score)
            }
        }
        if currentQuestion < limit {
            configure(with: questions[currentQuestion])
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = createMockData()
        configure(with: questions[currentQuestion])
        // Do any additional setup after loading the view.
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    private func createMockData() -> [QuestionScreens]{
        let mockData1 = QuestionScreens(category:"Entertainment: Video Games",
                                        question: "What was the first weapon pack for 'PAYDAY'?",
                                        correctAns: "The Gage Weapon Pack #1",
                                        dumbyAnswers: ["The Overkill Pack","The Gage Chivalry Pack","The Gage Historical Pack"])
        
        let mockData2 = QuestionScreens(category: "History",
                                        question: "Which of these founding fathers of the United States of America later became president?",
                                        correctAns: "James Monroe",
                                        dumbyAnswers: ["Roger Sherman", "Samuel Adams", "Alexander Hamilton"])
        
        let mockData3 = QuestionScreens(category: "Entertainment: Music",
                                        question: "What is the last song on the first Panic! At the Disco album?",
                                        correctAns: "Build God, Then We'll Talk",
                                        dumbyAnswers: ["I Write Sins Not Tragedies","Lying Is The Most Fun A Can Have Without Taking Her Clothes Off","Nails for Breakfast, Tacks for Snacks"])
        
        return [mockData1, mockData2, mockData3]
    }
    
    private func configure(with questions: QuestionScreens) {
        if currentQuestion != limit {
            currentQuestion+=1
        }


        //changes the very top Question:1/3
        questionCounter.text = "Question: \(currentQuestion)/3"
        
        //changes the Entertainment: Video Games
        questionCategory.text = questions.category
        
        //changes the actual Question
        Question.text = questions.question
        

        //fills in the correct answer randomly to the buttons
        let random = correctQuestionPosition.randomElement()
        if random == 1{
            buttonOneUI.setTitle(questions.correctAns, for: .normal)
            buttonTwoUI.setTitle(questions.dumbyAnswers[0], for: .normal)
            buttonThreeUI.setTitle(questions.dumbyAnswers[1], for: .normal)
            buttonFourUI.setTitle(questions.dumbyAnswers[2], for: .normal)
        } else if random == 2{
            buttonOneUI.setTitle(questions.dumbyAnswers[0], for: .normal)
            buttonTwoUI.setTitle(questions.correctAns, for: .normal)
            buttonThreeUI.setTitle(questions.dumbyAnswers[1], for: .normal)
            buttonFourUI.setTitle(questions.dumbyAnswers[2], for: .normal)
        } else if random == 3{
            buttonOneUI.setTitle(questions.dumbyAnswers[0], for: .normal)
            buttonTwoUI.setTitle(questions.dumbyAnswers[1], for: .normal)
            buttonThreeUI.setTitle(questions.correctAns, for: .normal)
            buttonFourUI.setTitle(questions.dumbyAnswers[2], for: .normal)
        } else if random == 4{
            buttonOneUI.setTitle(questions.dumbyAnswers[0], for: .normal)
            buttonTwoUI.setTitle(questions.dumbyAnswers[1], for: .normal)
            buttonThreeUI.setTitle(questions.dumbyAnswers[2], for: .normal)
            buttonFourUI.setTitle(questions.correctAns, for: .normal)
        }
        
    }
}



