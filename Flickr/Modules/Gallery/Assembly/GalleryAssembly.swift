//
//  GalleryAssembly.swift
//  Flickr
//
//  Created by Игорь Огай on 20/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

class GalleryAssembly {
    func build() -> UIViewController? {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "GalleryNavigationControllerIdentifier")
        
        guard let navigationVC = vc as? UINavigationController,
        let galleryVC = navigationVC.viewControllers.first as? ViewController else {
            return nil
        }
        
        let presenter = GalleryPresenter()
        let interactor = GalleryInteractor()
//        let router = Router()
        
        galleryVC.galleryViewOutput = presenter
        presenter.galleryInteractorInput = interactor
        presenter.viewInput = galleryVC
        interactor.galleryInteractorOutput = presenter
        
        return vc
    }
}
