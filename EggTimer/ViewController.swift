

import UIKit

class ViewController: UIViewController {
    
    let eggTimes : [String : Int] = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    
    var secondRemaining = 60
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
       secondRemaining =  eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)

    }
    
    @objc func updateTimer() {
        if secondRemaining >= 0 {
            Time.text = "\(secondRemaining) seconds"
            secondRemaining -= 1
            if secondRemaining == 0{
                titleText.text = "Your egg is ready!"
            }
        }
    }
    
    @IBOutlet weak var Time: UILabel!
    
    @IBOutlet weak var titleText: UILabel!
}
