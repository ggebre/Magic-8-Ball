//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Getu Gebre on 1/23/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballArray = ["ball1", "ball2","ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    newBallImage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    func newBallImage(){
        let randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

}

