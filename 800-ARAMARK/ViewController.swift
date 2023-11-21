//
//  ViewController.swift
//  800-ARAMARK
//
//  Created by Pawel Krepsztul on 2/8/19.
//  Copyright © 2019 Pawel Krepsztul. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play(_ sender: AnyObject) {
        playVideo()
    }
    func playVideo(){
        // let videoUrl = NSURL(fileURLWithPath : NSBundle.mainBundle().pathForResource("news", ofType: "mp4")!)
        let videoUrl = URL(fileURLWithPath : Bundle.main.path(forResource: "800", ofType: "mp4")!)
        
        let player = AVPlayer(url: videoUrl)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }

}

