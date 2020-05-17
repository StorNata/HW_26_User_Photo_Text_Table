//
//  TextController.swift
//  HW_26_User_Photo_Text_Table
//
//  Created by Nataliia Storozheva on 30.04.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class TextController: UIViewController {

    @IBOutlet private var text: UILabel?
    
    var model: Text?
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        text?.text = model?.tst
    }
}
