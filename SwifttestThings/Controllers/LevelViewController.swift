//
//  ViewController.swift
//  SwifttestThings
//
//  Created by Rodrigo Azeredo on 19/09/19.
//  Copyright © 2019 Rodrigo Azeredo. All rights reserved.
//

import UIKit

//========== Level View Controller =======================
class LevelViewController: UIViewController {
    
    //=========== Variáveis ==================
    let repository: Repository = Repository()
    var levels: [Level] = [Level]()

    //=========== Outlets ====================
    @IBOutlet weak var levelTableView: UITableView!
    
    
    //=========== viewDidLoad ================
    override func viewDidLoad() {
        super.viewDidLoad()
        levelTableView.dataSource = self
        //levelTableView.delegate = self
        
        levels = repository.getLevels()
        
        
        
        
        
    }

    

}


//============= Table View Data Source ==================
extension LevelViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return levels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let level = levels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "levelCell") as? customLevelTableViewCell
        
        return cell!
    }
    
}

