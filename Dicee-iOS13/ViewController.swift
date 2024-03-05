//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
          
        let imageResourceNames = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
        var imageArray: [UIImage] = []
        
        for image in imageResourceNames{
            if let image = UIImage(named: image){
                imageArray.append(image)
                }
        }
            
        
        diceImageView1.image = imageArray.randomElement()
        diceImageView2.image = imageArray.randomElement()
        
    }
    
}

