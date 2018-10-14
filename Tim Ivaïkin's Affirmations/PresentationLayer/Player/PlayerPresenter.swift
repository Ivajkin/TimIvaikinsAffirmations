//
//  PlayerPresenter.swift
//  Tim Ivaïkin's Affirmations
//
//  Created by Tim Ivaïkin on 9/17/18.
//  Copyright © 2018 Tim Ivaïkin. All rights reserved.
//

import AVFoundation

class PlayerPresenter {
    
    weak var view: PlayerViewInput?
    
    var audioPlayer: AVAudioPlayer? = {
        if let path = Bundle.main.path(forResource: "cinematic-percussion-001", ofType: "wav") {
            let mainSoundUrl = URL(fileURLWithPath: path)
            
            let player = try? AVAudioPlayer(contentsOf: mainSoundUrl)
            player?.numberOfLoops = -1
            return player
        }
        return nil
    }()
    
    private var isPlaying = false
    
    init(view: PlayerViewInput) {
        self.view = view
    }
}

// MARK: - PlayerViewOutput

extension PlayerPresenter: PlayerViewOutput {
    
    func viewIsReady() {
        view?.setupInitialState()
    }
    
    func playButtonTapped() {
        if isPlaying {
            audioPlayer?.pause()
            view?.setupButtonAppearance(forState: .paused)
        } else {
            
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
            view?.setupButtonAppearance(forState: .playing)
        }
        
        isPlaying.toggle()
    }
}
