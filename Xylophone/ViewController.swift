
//  Xylophone


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
       reduceOpacity(button: sender)
        
        playSound(sender.currentTitle!)
    }
    
    func playSound(_ resource: String) {
        let url = Bundle.main.url(forResource: resource, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
        func reduceOpacity(button: UIButton){
            button.alpha = 0.5
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                button.alpha = 1.0
        }
    }
    
}


