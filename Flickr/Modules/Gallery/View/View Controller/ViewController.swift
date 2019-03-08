//
//  ViewController.swift
//  Flickr
//
//  Created by Игорь Огай on 16/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var arrayOfImages = [GalleryItem]()
    
    var output: GalleryViewOutput!
    
    @IBOutlet weak var galleryTableView: UITableView!
    
    
    private let kTableViewCellNib = UINib(nibName: "TableViewCell", bundle: nil)
    private let kTableViewCellReuseIdentifier = "kTableViewCellReuseIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.updateTable()
        setUpUI()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = galleryTableView.dequeueReusableCell(withIdentifier: kTableViewCellReuseIdentifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        cell.viewModel = arrayOfImages[indexPath.row]
        return cell
    }
    
}

extension ViewController {
    func setUpUI() {
        galleryTableView.register(kTableViewCellNib, forCellReuseIdentifier: kTableViewCellReuseIdentifier)
        galleryTableView.dataSource = self
        galleryTableView.delegate = self
    }
}

extension ViewController {
    func display(galleryItems: [GalleryItem]) {
        arrayOfImages = galleryItems
        DispatchQueue.main.async { [weak self] in
            self?.galleryTableView.reloadData()
            print(galleryItems)
        }
    }
}

extension ViewController: GalleryViewInput {
    var galleryViewOutput: GalleryViewOutput {
        get {
            return output
        }
        set {
            output = newValue
        }
    }
}

extension ViewController {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.photoPressed(id: arrayOfImages[indexPath.row].id)
        galleryTableView.deselectRow(at: indexPath, animated: true)
    }
}
