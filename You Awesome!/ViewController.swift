//
//  ViewController.swift
//  You Awesome!
//
//  Created by Christopher Knapp on 1/9/19.
//  Copyright © 2019 Christopher Knapp. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
  
  
    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var soundOn: UISwitch!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    let imageCount = 10
    let soundCount = 5
    var soundIndex = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        var soundName = "sound\(soundIndex)"
        if let sound = NSDataAsset(name: soundName) {
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: Data in \(soundName) could not be played")
            }
        } else {
            print("ERROR: file\(soundName) didn't load")
        }
    }
    
    @IBAction func soundOnPressed(_ sender: UISwitch) {
        if soundOn.isOn != true {
            if soundIndex != -1 {
            awesomePlayer.stop()
        }
    }
    }
    @IBAction func Button(_ sender: UIButton) {
        
        let messages = ["You are Awesome!",
                        "You are great!",
                        "You are Fantastic!",
                        "When the Genius bar needs help, they call you",
                        "You brighten my day","You are da bomb",
                        "Hey fabulous","You are tremendous",
                        "Youve got the design skills of Johnny Ive",
                        "I can't wait to download you app!"]
        
    
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
       messageLabel.text = messages[index]
        //show an image
        imageIndex = nonRepeatingRandom(lastNumber: index, maxValue: imageCount)
       
        awesomeImage.image = UIImage(named: "image\(imageIndex)")

        if soundOn.isOn {
            
            soundIndex = nonRepeatingRandom(lastNumber: index, maxValue: soundCount)
            
            let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)
    }
    

}
}
