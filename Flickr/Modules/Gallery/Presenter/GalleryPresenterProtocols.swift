//
//  GalleryPresenterProtocols.swift
//  Flickr
//
//  Created by Игорь Огай on 20/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol GalleryPresenterInput {
    var galleryViewInput: GalleryViewInput { get set }
    var galleryPresenterOutput: GalleryPresenterOutput { get set }
    var galleryInteractorInput: GalleryInteractorInput { get set }
    
    func photoPressed(id: String)
    func updateTable()
    func updated(outArray: [GalleryItem])
}

protocol GalleryPresenterOutput {
    func showPhotoDetails(item: GalleryItem)
}
