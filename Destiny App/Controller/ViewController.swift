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
    
    let story0 =  "You see a fork in the road."
    let choice1 = "Take a left."
    let choice2 = "Take a right."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyText.text = story0
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        
        
    }
    


}

