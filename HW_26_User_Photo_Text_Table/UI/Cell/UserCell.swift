//
//  UserCell.swift
//  HW_26_User_Photo_Text_Table
//
//  Created by Nataliia Storozheva on 30.04.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit
import SDWebImage

class UserCell: UITableViewCell {
    
    @IBOutlet private var userPhoto: UIImageView?
    @IBOutlet private var userName: UILabel?
    
    var model: User? {
        didSet {
            if let path = model?.photoUser {
                userPhoto?.sd_setImage(with: URL(string: path))
            } else {
                userPhoto?.image = nil
            }
            userName?.text = model?.nameUser
        }
    }
}
