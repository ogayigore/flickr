//
//  GalleryItem.swift
//  Flickr
//
//  Created by Игорь Огай on 16/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

struct GalleryItem {
    var id: String
    var name: String
    var pictureURL: URL
}

extension GalleryItem: GalleryTableViewCellModel {
    var imageURL: URL {
        return pictureURL
    }
    
    var title: String {
        return name
    }
}
