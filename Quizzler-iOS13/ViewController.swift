//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  Modified by Ednan Rogério Frizzera Filho on 15/08/2023
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    // MARK: - Properties
    let quiz = [
        "4 + 2 = 6",
        "5 - 3 > 1",
        "3 + 8 < 10"
    ]
    var questionNumber = 0
    
    // MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    // MARK: - IBActions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    
    // MARK: - Functions
    func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
    
}

