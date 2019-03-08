//
//  DetailAssembly.swift
//  Flickr
//
//  Created by Игорь Огай on 28/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

class DetailAssembly {
    func build() -> UIViewController? {
        let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController")
        guard let detailVC = vc as? DetailViewController else { return nil }
        
        let presenter = DetailPresenter()
        let interactor = DetailInteractor()
        
        detailVC.detailPresenterInput = presenter
        presenter.detailInteractorInput = interactor
        presenter.detailViewInput = detailVC
        interactor.detailInteractorOutput = presenter
        
        return vc

    }
}
