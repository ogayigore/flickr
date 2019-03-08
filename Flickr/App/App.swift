//
//  App.swift
//  Flickr
//
//  Created by Игорь Огай on 20/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

class App {
    var modulesRouter = Router()
    
    init() {
        modulesRouter = Router()
    }
}

extension App {
    func rootController() -> UIViewController? {
        return modulesRouter.rootModuleController()
    }
}
