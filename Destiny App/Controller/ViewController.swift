//
//  ViewController.swift
//  Destiny App
//
//  Created by Hiba Abdulla on 5/10/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {

        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyText.text = storyBrain.stories[storyBrain.storyNumber][0]
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber][1], for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber][2], for: .normal)
    }
}

