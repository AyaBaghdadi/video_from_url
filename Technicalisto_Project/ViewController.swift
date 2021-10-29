//
//  ViewController.swift
//  Technicalisto_Project
//
//  Created by Technicalisto.
//

import UIKit
import AVKit

class ViewController: UIViewController  {

    @IBOutlet weak var videoView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.DisplayVideoFromUrl(myUrl: "http://techslides.com/demos/sample-videos/small.mp4", myView: videoView)
        
    }
    
    func DisplayVideoFromUrl(myUrl:String , myView:UIView){
        
        let player = AVPlayer(url: URL(string: myUrl)!)
        
        let playerLayer = AVPlayerLayer(player: player)
        
        playerLayer.videoGravity = .resizeAspectFill //
        playerLayer.needsDisplayOnBoundsChange = true //
        playerLayer.frame = myView.bounds // 1

        myView.layer.masksToBounds = true // 2
        myView.layer.addSublayer(playerLayer)
        
        player.play()
        
    }


}

