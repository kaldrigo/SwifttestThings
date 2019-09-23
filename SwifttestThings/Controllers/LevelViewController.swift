//
//  ViewController.swift
//  SwifttestThings
//
//  Created by Rodrigo Azeredo on 19/09/19.
//  Copyright © 2019 Rodrigo Azeredo. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repository: Repository = Repository()
        
        repository.printLevel()
        
    }


}

