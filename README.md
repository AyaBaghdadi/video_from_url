
# Technicalisto

## How to Display Video from URL inside custom design UIView

1. Add your UIView and connect it .

2. Add This method for display

    func DisplayVideoFromUrl(myUrl:String , myView:UIView) {
        
        let player = AVPlayer(url: URL(string: myUrl)!)
        
        let playerLayer = AVPlayerLayer(player: player)
        
        playerLayer.videoGravity = .resizeAspectFill //
        playerLayer.needsDisplayOnBoundsChange = true //
        playerLayer.frame = videoView.bounds // 1

        myView.layer.masksToBounds = true // 2
        myView.layer.addSublayer(playerLayer)
        
        player.play()
        
      }

3. Call method by your video Url & UIView

    self.DisplayVideoFromUrl(myUrl: "http://techslides.com/demos/sample-videos/small.mp4", myView: videoView)
    
    // Note This Url is an Example ...


### Thanks

