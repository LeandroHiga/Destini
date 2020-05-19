//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Connect buttons and label
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    // Create new story
    var story = StoryBrain()
    
    // User pick choice
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle! // Choice 1 or Choice 2
        story.nextStory(userChoice)

        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choice1Button.titleLabel?.adjustsFontSizeToFitWidth = true
        choice2Button.titleLabel?.adjustsFontSizeToFitWidth = true
        
        updateUI()
        
    }

    func updateUI() {
        // Starting labels
        storyLabel.text = story.getTitle()
        choice1Button.setTitle(story.getChoice1(), for: .normal)
        choice2Button.setTitle(story.getChoice2(), for: .normal)
    }

}

