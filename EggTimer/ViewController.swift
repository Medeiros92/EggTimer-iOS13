

import UIKit

class ViewController: UIViewController {
    
    let eggTimes : [String : Int] = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    
    var secondRemaining = 60
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
       secondRemaining =  eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)

    }
    
    @objc func updateTimer() {
        if secondRemaining >= 0 {
            Time.text = "\(secondRemaining) seconds"
            secondRemaining -= 1
            if secondRemaining == 0{
                
            }
        }
    }
    
    @IBOutlet weak var Time: UILabel!
    
}
