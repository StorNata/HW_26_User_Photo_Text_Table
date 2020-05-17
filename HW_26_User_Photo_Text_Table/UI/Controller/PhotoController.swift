//
//  PhotoController.swift
//  HW_26_User_Photo_Text_Table
//
//  Created by Nataliia Storozheva on 30.04.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class PhotoController: UIViewController {
    
    @IBOutlet var imagePhoto: UIImageView?
    
    var model: Photo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = model?.photo {
            imagePhoto?.sd_setImage(with: URL(string: path))
        }
    }
}
