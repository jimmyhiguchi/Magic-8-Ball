//
//  ViewController.swift
//  Magic 8-Ball
//
//  Created by Jimmy Higuchi on 12/10/17.
//  Copyright © 2017 Jimmy Higuchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    var randomAnswer = 0
    
    var ballImages = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ballAnswer()
    }

    @IBAction func answerButton(_ sender: Any) {
        ballAnswer()
    }

    func ballAnswer() {
        randomAnswer = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage(named: ballImages[randomAnswer])
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ballAnswer()
    }
}

