//
//  ViewController.swift
//  Scribe
//
//  Created by Ricardo Herrera Petit on 3/26/19.
//  Copyright © 2019 Ricardo Herrera Petit. All rights reserved.
//

import UIKit
import Speech
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var activitySpinner: UIActivityIndicatorView!
    @IBOutlet weak var transcriptionTextView: UITextView!
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activitySpinner.isHidden = true
    }

  
    func requestSpeechAuth() {
        SFSpeechRecognizer.requestAuthorization { (authStatus) in
            if authStatus == .authorized {
                if let path = Bundle.main.url(forResource: "testAudio", withExtension: "m4a") {
                    do {
                        let sound = try AVAudioPlayer(contentsOf: path)
                        self.audioPlayer = sound
                        sound.play()
                    } catch {
                        debugPrint("Error")
                    }
                }
            }
        }
    }

    
//    func requestSpeechAuth() {
//        SFSpeechRecognizer.requestAuthorization { authStatus in
//            if authStatus == .authorized {
//                if let path = Bundle.main.url(forResource: "testAudio", withExtension: "m4a") {
//                    do {
//                        let sound = try AVAudioPlayer(contentsOf: path)
//                        self.audioPlayer = sound
//                        sound.play()
//                    } catch
//                        debugPrint("Error!")
//                    }
//
//
//
//                }
//            }
//        }
//    }


}
