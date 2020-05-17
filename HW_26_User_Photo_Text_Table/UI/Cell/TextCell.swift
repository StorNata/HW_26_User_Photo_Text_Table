//
//  TetxtCell.swift
//  HW_26_User_Photo_Text_Table
//
//  Created by Nataliia Storozheva on 30.04.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell {
    
    @IBOutlet private var textText: UILabel?
    
    var model: Text? {
        didSet {
            textText?.text = model?.tst
        }
    }
}
