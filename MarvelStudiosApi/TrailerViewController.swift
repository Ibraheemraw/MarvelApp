//
//  ViewController.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 12/27/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class TrailerViewController: UIViewController {
    @IBOutlet weak var trailerTableView: UITableView!
    var trailers = Trailer.fetchVideos()
    var player = AVPlayer()
    var marvelPlayerVC = AVPlayerViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        trailerTableView.delegate = self
        trailerTableView.dataSource = self
//        self.title = "MARVEL STUDIOS"
        
    }


}

extension TrailerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trailers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tCell", for: indexPath) as? MarvelTrailerCell else { return UITableViewCell() }
        let trailersToSet =  trailers[indexPath.row]
       cell.trailerIExpect = trailersToSet
        return cell
    }
    
    
}

extension TrailerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 450
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // creating a function to play the video when clicked
        playVideo(at: indexPath)
    }
    
    func playVideo(at indexPath: IndexPath) { //"at" - is the label of the paramter
        
        // at the index path lets get the selected video
        //create a constanst called selectedVideo
        let selectedVideo = trailers[indexPath.row]
        //getting the video path
        //create a constqnt called videoPath
        let videoPath = Bundle.main.path(forResource: selectedVideo.videoFileName, ofType: ".mp4")
        //
        let videoPathURL = URL(fileURLWithPath: videoPath!) // you force unwrapp because you want to make sure you have videos
        player = AVPlayer(url: videoPathURL)
        marvelPlayerVC.player = player
        self.present(marvelPlayerVC, animated: true, completion: {
            //creating a closure so when the cell is selected the video automatically plays
            self.marvelPlayerVC.player?.play()
        })
        
    }
}
