//
//  ViewController.swift
//  player
//
//  Created by 최진용 on 2022/08/15.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressBut(_ sender: UIButton) {
        print(sender.currentTitle!)
        playSound(sending: sender.currentTitle!)
    }
    func playSound(sending: String){
        let sound = Bundle.main.url(forResource: sending, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: sound!)
        player.play()
    }
    
}

