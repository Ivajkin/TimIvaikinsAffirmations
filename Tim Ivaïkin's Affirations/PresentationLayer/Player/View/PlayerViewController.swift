//
//  PlayerViewController.swift
//  Tim Ivaïkin's Affirations
//
//  Created by Tim Ivaïkin on 9/17/18.
//  Copyright © 2018 Tim Ivaïkin. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    
    var output: PlayerViewOutput?
    
    let playButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.titleLabel?.text = "Play"
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.0)
        return button
    }()
    
    private func setupPlayButton() {
        playButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(playButton)
        playButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 80.0).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        output?.viewIsReady()
    }
}

// MARK: - PlayerViewInput

extension PlayerViewController: PlayerViewInput {
    
    func setupInitialState() {
        setupPlayButton()
    }
}
