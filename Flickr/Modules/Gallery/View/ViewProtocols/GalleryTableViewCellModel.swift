//
//  GalleryTableViewCellModel.swift
//  Flickr
//
//  Created by Игорь Огай on 19/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

protocol GalleryTableViewCellModel {
    var id: String { get }
    var title: String { get }
    var imageURL: URL { get }
}
