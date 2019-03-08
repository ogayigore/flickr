//
//  TableViewCell.swift
//  Flickr
//
//  Created by Игорь Огай on 16/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import UIKit
import Kingfisher

class TableViewCell: UITableViewCell {

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var viewModel: GalleryTableViewCellModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            titleLabel.text = viewModel.title
            pictureImageView.kf.setImage(with: viewModel.imageURL)
        }
    }
}
