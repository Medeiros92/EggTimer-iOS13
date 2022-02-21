//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle
        
        if(hardness == "Soft"){
            Time.text = "\(softTime) Minutes"
        }else if(hardness == "Medium"){
            Time.text = "\(mediumTime) Minutes"
        }else if(hardness == "Hard"){
            Time.text = "\(hardTime) Minutes"
        }
    }
    
    @IBOutlet weak var Time: UILabel!
    
}
