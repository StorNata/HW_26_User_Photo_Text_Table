//
//  NavigationController.swift
//  HW_26_User_Photo_Text_Table
//
//  Created by Nataliia Storozheva on 30.04.2020.
//  Copyright © 2020 Nataliia Storozheva. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.topViewController?.supportedInterfaceOrientations ?? .all
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.topViewController?.preferredStatusBarStyle ?? .`default`
    }
}
