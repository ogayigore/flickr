//
//  InternetServiceProtocol.swift
//  Flickr
//
//  Created by Игорь Огай on 20/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol InternetServiceInput: class {
    func loadData<T>(fromURL: URL?,
                     parseInto container: T.Type,
                     success: @escaping (T) -> Void,
                     failure: @escaping (Int) -> Void) where T : Codable
}
