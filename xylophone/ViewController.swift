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
        // Do any additional setup after loading the view.
    }

    private func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer?.play()
    }
    
    @IBAction func cKey(_ sender: UIButton) {
//        playSound(soundName: sender.currentTitle!)
        guard let key = sender.titleLabel?.text else {return}
        playSound(soundName: key)
    }
    
}

