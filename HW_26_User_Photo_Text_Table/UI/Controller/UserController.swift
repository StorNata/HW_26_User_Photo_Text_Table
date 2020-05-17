//
//  UserController.swift
//  HW_26_User_Photo_Text_Table
//
//  Created by Nataliia Storozheva on 30.04.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class UserController: UIViewController {
    
    @IBOutlet var labelUser: UILabel?
    @IBOutlet var labelText1: UILabel?
    @IBOutlet var labelText2: UILabel?
    @IBOutlet var labelText3: UILabel?
    @IBOutlet var imageViewUser: UIImageView?
    
    var model: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = model?.photoUser {
            imageViewUser?.sd_setImage(with: URL(string: path))
        }
        
        labelUser?.text = model?.nameUser
        labelText1?.text = model?.phone
        labelText2?.text = model?.email
        labelText3?.text = model?.fb
    }
}
