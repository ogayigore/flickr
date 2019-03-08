//
//  GalleryInteractor.swift
//  Flickr
//
//  Created by Игорь Огай on 18/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

class GalleryInteractor {
    var interactorOutput: GalleryInteractorOutput!
    var outArray = [GalleryItem]()
}

extension GalleryInteractor {
    func downloadData() {
        guard let url = URL(string: "https://www.flickr.com/services/rest?method=flickr.interestingness.getList&api_key=3988023e15f45c8d4ef5590261b1dc53&per_page=40&page=1&format=json&nojsoncallback=1&extras=url_l&date=2018-09-23") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                let photos = try
                    JSONDecoder().decode(FlickrResponse.self, from: data)
//                print(photos)
                self.downloaded(response: photos)
            } catch let jsonErr {
                print("error", jsonErr)
            }
            
        }.resume()
    }
}

extension GalleryInteractor {
    func downloaded(response: FlickrResponse) {
        guard let photosArray = response.photos?.photo else { return }
        for item in photosArray {
            let id = item.id
            let title = item.title
            let pictureURL = item.url_l
            let galleryItem = GalleryItem(id: id, name: title, pictureURL: pictureURL)
            outArray.append(galleryItem)
        }
        interactorOutput.updated(outArray: outArray)
    }
}

extension GalleryInteractor: GalleryInteractorInput {
    var galleryInteractorOutput: GalleryInteractorOutput {
        get {
            return interactorOutput
        }
        set {
            interactorOutput = newValue
        }
    }
}

extension GalleryInteractor {
    func getPhoto(id: String) {
        print("getPhoto()")
        guard let pressedItem = outArray.first(where: { $0.id == id }) else { return }
        print("Выбранная фотка - \(pressedItem)")
        interactorOutput.recieved(item: pressedItem)
    }
}
