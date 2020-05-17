//
//  PhotoCell.swift
//  HW_26_User_Photo_Text_Table
//
//  Created by Nataliia Storozheva on 30.04.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {
    
    @IBOutlet private var photoImageView: UIImageView?
    
    var model: Photo? {
        didSet {
            if let path = model?.photo {
                photoImageView?.sd_setImage(with: URL(string: path))
            } else {
                photoImageView?.image = nil
            }
        }
    }
}
