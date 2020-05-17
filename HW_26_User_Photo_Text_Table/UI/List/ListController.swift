//
//  ListController.swift
//  HW_26_User_Photo_Text_Table
//
//  Created by Nataliia Storozheva on 30.04.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class ListController: ViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet private var tableView: UITableView?
    @IBOutlet private var dataSource = [Any]()
    
    override func setup() {
        super.setup()
        title = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.append(contentsOf: DataProvider.shared.models())
        tableView?.reloadData()
        
        let backImage = UIImage(named: "back_button_image")
        navigationController?.navigationBar.backIndicatorImage = backImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if
            let cell = sender as? PhotoCell,
            let controller = segue.destination as? PhotoController {
            controller.model = cell.model
            
        } else if let cell = sender as? UserCell,
            let controller = segue.destination as? UserController {
            controller.model = cell.model
            
        } else if let cell = sender as? TextCell,
            let controller = segue.destination as?
            TextController {
            controller.model = cell.model
        }
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = dataSource[indexPath.row]
        var cell: UITableViewCell?
        let reuseId: String
        
        if let model = model as? User {
            reuseId = "userCell"
            cell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath)
            if let cell = cell as? UserCell {
                cell.model = model
            }
        } else if let model = model as? Photo {
            reuseId = "photoCell"
            cell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath)
            if let cell = cell as? PhotoCell {
                cell.model = model
            }
        } else if let model = model as? Text {
            reuseId = "textCell"
            cell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath)
            if let cell = cell as? TextCell {
                cell.model = model
            }
        }
        return cell!
    }
}

