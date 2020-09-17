//
//  ViewController.swift
//  Destini
//
//  Created by ahmet on 17.09.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()    
    }
    
    @IBAction func choiseMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        storyBrain.nextStory(userAnswer)
        
        updateUI()
    }
    
    func updateUI(){
        
        storyLabel.text = storyBrain.getTitle()
        button1.setTitle(storyBrain.getChoice1(), for: .normal)
        button2.setTitle(storyBrain.getChoise2(), for: .normal)
        
        
    }
    
}

