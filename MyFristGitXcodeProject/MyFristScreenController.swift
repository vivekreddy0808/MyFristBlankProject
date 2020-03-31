//
//  MyFristScreenController.swift
//  MyFristGitXcodeProject
//
//  Created by Vivek Reddy on 31/03/20.
//  Copyright © 2020 Vivek Reddy. All rights reserved.
//

import UIKit
import MediaPlayer

class MyFristScreenController: UIViewController {
    
    var musicPlayer = MPMusicPlayerController.applicationMusicPlayer

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func GenericButtonTag(_ sender: UIButton) {
        
    }
    
    @IBAction func StopButtonTapped(_ sender: UIButton) {
    }
    @IBAction func NextButtonTapped(_ sender: UIButton) {
    }
    
    func playGenre(genre: String)
    {
        musicPlayer.stop()
        
        let query = MPMediaQuery()
        let predicate = MPMediaPropertyPredicate(value: genre, forProperty: MPMediaItemPropertyGenre)
        
        query.addFilterPredicate(predicate)
        
        musicPlayer.setQueue(with: query)
        musicPlayer.shuffleMode = .songs
        musicPlayer.play()
    }
}
