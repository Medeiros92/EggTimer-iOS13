

import UIKit
import AVFoundation //import lib player

class ViewController: UIViewController {
    
    let eggTimes : [String : Int] = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    
    var totalTime = 0
    var secondsPassed = 0
    var player : AVAudioPlayer!
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
       totalTime =  eggTimes[hardness]!
        
        // Reset
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        // Time and Velocity
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)

    }
     // Play sound function
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
     // Cronometer
    @objc func updateTimer() {
        
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        }else{
            timer.invalidate()
            titleLabel.text = "Done!"
            playSound()
        }
    }
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
}
