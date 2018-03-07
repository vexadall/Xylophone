//
//  ViewController.swift
//  Xylophone
//
//  Created by Alexandru Vlad on 27/01/2018.
//  Copyright © 2018 Alexandru Vlad. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

   
    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")
        
            do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL! )
            
            }catch{
                
            print(error)
        }
        
        audioPlayer.play()
    }
    

}

