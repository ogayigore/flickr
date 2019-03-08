//
//  GalleyInteractorProtocols.swift
//  Flickr
//
//  Created by Игорь Огай on 20/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol GalleryInteractorInput {
    var galleryInteractorOutput: GalleryInteractorOutput { get set }
    func downloadData()
    func downloaded(response: FlickrResponse)
    func getPhoto(id: String)
}

protocol GalleryInteractorOutput {
    func updated(outArray: [GalleryItem])
    func recieved(item: GalleryItem)
}
  
