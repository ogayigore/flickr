//
//  GalleryViewProtocols.swift
//  Flickr
//
//  Created by Игорь Огай on 20/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol GalleryViewInput {
    var galleryViewOutput: GalleryViewOutput { get set }
    func display(galleryItems: [GalleryItem])
}

protocol GalleryViewOutput {
    func updateTable()
    func photoPressed(id: String)
}
