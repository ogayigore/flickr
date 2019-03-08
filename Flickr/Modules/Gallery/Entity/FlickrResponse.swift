//
//  FlickrResponse.swift
//  Flickr
//
//  Created by Игорь Огай on 19/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

struct FlickrResponse: Codable {
    var photos: Photos?
}

struct Photo: Codable {
    var id: String
    var title: String
    var url_l: URL
}

struct Photos: Codable {
    var photo: [Photo]
}
