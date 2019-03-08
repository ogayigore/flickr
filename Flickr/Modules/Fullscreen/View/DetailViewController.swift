//
//  DetailViewController.swift
//  Flickr
//
//  Created by Игорь Огай on 21/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {
    
    var presenter: DetailPresenterInput!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setView()
    }
}

extension DetailViewController: DetailViewInput {
    var detailPresenterInput: DetailPresenterInput {
        get {
            return presenter
        }
        set {
            presenter = newValue
        }
    }
    
    func show(item: GalleryItem) {
        titleLabel.text = item.title
        photoImageView.kf.setImage(with: item.imageURL)
    }
}
