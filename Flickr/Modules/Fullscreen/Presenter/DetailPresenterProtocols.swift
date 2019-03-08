//
//  DetailPresenterProtocols.swift
//  Flickr
//
//  Created by Игорь Огай on 23/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol DetailPresenterInput {
    var detailViewInput: DetailViewInput { get set }
    var detailInteractorInput: DetailInteractorInput { get set }
    var galleryItem: GalleryItem { get set }
    
    func setView()
}

