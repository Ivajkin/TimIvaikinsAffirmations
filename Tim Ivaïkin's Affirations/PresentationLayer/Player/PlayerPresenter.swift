//
//  PlayerPresenter.swift
//  Tim Ivaïkin's Affirations
//
//  Created by Tim Ivaïkin on 9/17/18.
//  Copyright © 2018 Tim Ivaïkin. All rights reserved.
//

class PlayerPresenter {
    
    weak var view: PlayerViewInput?
    
    init(view: PlayerViewInput) {
        self.view = view
    }
}

// MARK: - PlayerViewOutput

extension PlayerPresenter: PlayerViewOutput {
    
    func viewIsReady() {
        view?.setupInitialState()
    }
}
