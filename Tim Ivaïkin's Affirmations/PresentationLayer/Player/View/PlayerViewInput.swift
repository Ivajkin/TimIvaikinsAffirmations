//
//  PlayerViewInput.swift
//  Tim Ivaïkin's Affirmations
//
//  Created by Tim Ivaïkin on 9/17/18.
//  Copyright © 2018 Tim Ivaïkin. All rights reserved.
//

protocol PlayerViewInput: class {
    
    func setupInitialState()
    func setupButtonAppearance(forState state: PlaybuttonState)
}
