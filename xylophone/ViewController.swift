//  ViewController.swift
//  xylophone
//
//  Created by ivan cardenas on 18/02/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer?.play()
    }
    
    @IBAction func pressKey(_ sender: UIButton) {
        
        sender.alpha = 0.8
        
        
        
        guard let key = sender.titleLabel?.text else {return}
        playSound(soundName: key)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    sender.alpha = 1
        }
    }
    
}

