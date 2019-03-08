//
//  DetailViewProtocols.swift
//  Flickr
//
//  Created by Игорь Огай on 23/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol DetailViewInput {
    var detailPresenterInput: DetailPresenterInput { get set }
    func show(item: GalleryItem)
}
