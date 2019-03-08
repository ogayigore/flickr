//
//  DetailPresenter.swift
//  Flickr
//
//  Created by Игорь Огай on 28/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

class DetailPresenter {
    var view: DetailViewInput!
    var interactor: DetailInteractorInput!
    var activeGalleryItem: GalleryItem!
    var router: DetailInteractorOutput!
}

extension DetailPresenter: DetailPresenterInput {
    var detailViewInput: DetailViewInput {
        get {
            return view
        }
        set {
            view = newValue
        }
    }
    
    var detailInteractorInput: DetailInteractorInput {
        get {
            return interactor
        }
        set {
            interactor = newValue
        }
    }
    
    var galleryItem: GalleryItem {
        get {
            return activeGalleryItem
        }
        set {
            activeGalleryItem = newValue
        }
    }
    
    func setView() {
        view.show(item: activeGalleryItem)
    }
}

extension DetailPresenter: DetailInteractorOutput {
    
}
