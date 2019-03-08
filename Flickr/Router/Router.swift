//
//  Router.swift
//  Flickr
//
//  Created by Игорь Огай on 22/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

class Router {
    var activeNavigationController = UINavigationController()
    
    func rootModuleController() -> UIViewController {
        let galleryAssembly = GalleryAssembly()
        guard let gallery = galleryAssembly.build() else { return UIViewController() }
        activeNavigationController = gallery as! UINavigationController
        return activeNavigationController
    }
    
    func showDetail(pic: URL) -> UIViewController {
        let detailAssembly = DetailAssembly()
        guard let detail = detailAssembly.build() else { return UIViewController() }
        return detail
    }
    
    func performTransition(view: UIViewController) {
        activeNavigationController.pushViewController(view, animated: true)
    }
}

extension Router: GalleryPresenterOutput {
    func showPhotoDetails(item: GalleryItem) {
        if activeNavigationController != nil {
            performTransition(view: showDetail(pic: item.imageURL))
        }
    }
}
