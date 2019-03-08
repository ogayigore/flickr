//
//  GalleryPresenter.swift
//  Flickr
//
//  Created by Игорь Огай on 20/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class GalleryPresenter: NSObject {
    var viewInput: GalleryViewInput!
    var interactorInput: GalleryInteractorInput!
    var presenterOutput: GalleryPresenterOutput!
    var router = Router()
}

extension GalleryPresenter: GalleryViewOutput {
    func photoPressed(id: String) {
        print("photoPressed()")
        galleryInteractorInput.getPhoto(id: id)
    }
    
    func updateTable() {
        galleryInteractorInput.downloadData()
    }
}

extension GalleryPresenter: GalleryInteractorOutput {
    func recieved(item: GalleryItem) {
        print("recieved()")
        router.showPhotoDetails(item: item)
    }
    
    func updated(outArray: [GalleryItem]) {
        galleryViewInput.display(galleryItems: outArray)
    }
}

extension GalleryPresenter: GalleryPresenterInput {
    
    var galleryViewInput: GalleryViewInput {
        get {
            return viewInput
        }
        set {
            viewInput = newValue
        }
    }
    
    var galleryPresenterOutput: GalleryPresenterOutput {
        get {
            return presenterOutput
        }
        set {
            presenterOutput = newValue
        }
    }
    
    var galleryInteractorInput: GalleryInteractorInput {
        get {
            return interactorInput
        }
        set {
            interactorInput = newValue
        }
    }
}


