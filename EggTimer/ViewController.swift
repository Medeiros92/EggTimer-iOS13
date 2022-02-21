

import UIKit

class ViewController: UIViewController {
    
    let eggTimes : [String : Int] = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle
        
        Time.text =  "\(eggTimes[hardness!]!) Minutes"
    }
    
    @IBOutlet weak var Time: UILabel!
    
}
