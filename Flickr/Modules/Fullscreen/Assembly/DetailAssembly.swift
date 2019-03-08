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
        guard let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return nil }
        
        let presenter = DetailPresenter()
        let interactor = DetailInteractor()
        
        vc.detailPresenterInput = presenter
        presenter.detailInteractorInput = interactor
        presenter.detailViewInput = vc
        interactor.detailInteractorOutput = presenter
        
        return vc
    }
}
