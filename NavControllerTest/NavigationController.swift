//
//  NavigationController.swift
//  NavControllerTest
//
//  Created by Jared Halpern on 3/5/19.
//

import UIKit

class NavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return visibleViewController!.preferredStatusBarStyle
    }
}
