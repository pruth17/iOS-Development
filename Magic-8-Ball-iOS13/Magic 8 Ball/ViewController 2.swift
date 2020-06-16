//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    let myArray =  [#imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        image.image = myArray.randomElement()
    }
    
}

