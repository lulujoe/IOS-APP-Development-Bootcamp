//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Enzhe Lu on 5/21/19.
//  Copyright © 2019 Enzhe Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newBallImage()
    }

    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}

