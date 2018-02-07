//
//  CalculatorViewController.swift
//  Core: Radiology
//
//  Created by Nathan Potter on 1/17/18.
//  Copyright © 2018 Core Medical Apps, LLC. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var menuOption: String = ""
    
    @IBOutlet var headerView: UIView!
    @IBOutlet var questionView: UIView!
    @IBOutlet var switchView: UIView!
    @IBOutlet var outputView: UIView!
    
    let calculatorHeader = UILabel()
    let calculatorOutput = UILabel()
    let calculatorQuestion = UILabel()
    let calculatorSwitch = UISwitch()
    let calculatorAnswer = UILabel()
    
    class Calculator{
        var title: String
        var headerText: String
        var outputText: [String]
        var questions: [String]
        var correctAnswers: [Bool]
        var numberOfQuestions: Int
        init(title: String, headerText: String, outputText: [String], questions: [String], correctAnswers: [Bool]){
            self.title = title
            self.headerText = headerText
            self.outputText = outputText
            self.questions = questions
            self.correctAnswers = correctAnswers
            self.numberOfQuestions = questions.count
        }
    }
    
    let nexus = Calculator(title: "NEXUS C-Spine", headerText: "Use this tool to clear patients from a C-collar without getting imaging. If a patient has no high-risk factors, there is a 99+% chance that they do not have a significant C-spine injury. If they do have high-risk factors, get a CT scan.", outputText: ["C-Spine can be cleared by NEXUS rules!", "C-Spine cannot be cleared, consider a C-spine CT"], questions: ["Does the patient have a focal neurologic deficit?", "Does the patient have midline c-spine tenderness?", "Does the patient have an altered LOC?", "Is the patient intoxicated?", "Does the patient have a distracting painful injury?"], correctAnswers: [false, false, false, false, false])
    
    let ottawaAnkle = Calculator(title: "Ottawa Ankle Rules", headerText: "Use this tool to determine which patients over 2 years old with ankle pain need imaging. If the patient has no high-risk features, they don't need imaging. If they do, they should get an x-ray ankle series (lateral and AP mortice). This rule is 90-100% sensitive for clinically significant fractures.", outputText: ["This patient does not need imaging", "This patient should get an ankle X-ray series"], questions: ["Is there bony tenderness at the posterior part of the lateral malleolus?", "Is there tenderness at the posterior part of the medial malleolus?", "Was the patient able to walk 4 steps either immediately after the injury or in the ED?"], correctAnswers: [false, false, true])
    
    let ottawaFoot = Calculator(title: "Ottawa Foot Rules", headerText: "Use this tool to determine which patients over 2 years old with midfoot pain need imaging. If the patient has no high-risk features, they don't need imaging. If they do, they should get an x-ray foot series (lateral, AP, and oblique). This rule is 90-100% sensitive for clinically significant fractures.", outputText: ["This patient does not need imaging", "This patient should get a foot X-ray series"], questions: ["Does the patient have bony tenderness at the base of the 5th metatarsal?", "Does the patient have bony tenderness over the navicular bone (medial midfoot)?", "Was the patient able to walk 4 steps either immediately after the injury or in the ED?"], correctAnswers: [false, false, true])
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let calculatorDict: [String:Calculator] = [
            "Ottawa Ankle Rules" : ottawaAnkle,
            "Ottawa Foot Rules" : ottawaFoot,
            "NEXUS C-Spine Rules" : nexus
        ]
    
        self.title = calculatorDict[menuOption]?.title
        
        calculatorHeader.text = calculatorDict[menuOption]?.headerText
        calculatorHeader.font = UIFont(name: "HelveticaNeue", size: 17)
        calculatorHeader.textColor = .white
        calculatorHeader.textAlignment = .left
        calculatorHeader.lineBreakMode = NSLineBreakMode.byWordWrapping
        calculatorHeader.numberOfLines = 0
        calculatorHeader.translatesAutoresizingMaskIntoConstraints = false

        self.headerView.addSubview(calculatorHeader)
        
        calculatorHeader.widthAnchor.constraint(equalTo: calculatorHeader.superview!.widthAnchor, multiplier: 0.5)
        calculatorHeader.heightAnchor.constraint(equalTo: calculatorHeader.superview!.heightAnchor)
        calculatorHeader.leadingAnchor.constraint(equalTo: calculatorHeader.superview!.leadingAnchor)
        calculatorHeader.topAnchor.constraint(equalTo: calculatorHeader.superview!.topAnchor)
        
        /*
        for n in 0...(calculatorDict[menuOption]?.numberOfQuestions)!-1{
            calculatorQuestion.text = (calculatorDict[menuOption]?.questions[n])!
            calculatorQuestion.font = UIFont(name: "HelveticaNeue", size: 15)
            calculatorQuestion.textColor = .white
            calculatorQuestion.textAlignment = .left
            calculatorQuestion.lineBreakMode = NSLineBreakMode.byWordWrapping
            calculatorQuestion.translatesAutoresizingMaskIntoConstraints = false

            self.questionView.addSubview(calculatorQuestion)

            calculatorQuestion.widthAnchor.constraint(equalTo: calculatorQuestion.superview!.widthAnchor)
            calculatorQuestion.heightAnchor.constraint(equalToConstant: 60)
            calculatorQuestion.leadingAnchor.constraint(equalTo: calculatorQuestion.superview!.leadingAnchor)
            calculatorQuestion.topAnchor.constraint(equalTo: calculatorQuestion.superview!.topAnchor, constant: CGFloat(60*n))
        }*/
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
