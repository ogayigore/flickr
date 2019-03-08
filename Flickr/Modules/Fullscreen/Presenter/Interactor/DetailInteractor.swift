//
//  DetailInteractor.swift
//  Flickr
//
//  Created by Игорь Огай on 28/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

class DetailInteractor {
    var presenter: DetailInteractorOutput!
}

extension DetailInteractor: DetailInteractorInput {
    var detailInteractorOutput: DetailInteractorOutput {
        get {
            return presenter
        }
        set {
            presenter = newValue
        }
    }
}

