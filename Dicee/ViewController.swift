//
//  ViewController.swift
//  Dicee
//
//  Created by SER-YCL4 on 7/11/19.
//  Copyright © 2019 SER-YCL4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImgView2: UIImageView!
    @IBOutlet weak var diceImgView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(5))
        randomDiceIndex2 = Int(arc4random_uniform(5))
        
        diceImgView1.image = UIImage(named: diceArray[randomDiceIndex1 ])
        diceImgView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    

}

