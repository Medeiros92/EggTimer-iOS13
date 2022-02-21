

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
