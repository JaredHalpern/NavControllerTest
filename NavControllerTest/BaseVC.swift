//
//  ViewController.swift
//  NavControllerTest
//
//  Created by Jared Halpern on 3/5/19.
//

import UIKit

class BaseVC: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        navigationController?.navigationBar.barStyle = .blackOpaque
//        navigationController?.navigationBar.isTranslucent = false
//        navigationController?.navigationBar.tintColor = .white
        
//        self.navigationController?.navigationBar.tintAdjustmentMode = .normal
//        self.navigationController?.navigationBar.tintAdjustmentMode = .automatic
    }

    ////
    // https://stackoverflow.com/questions/43014716/how-do-i-transition-animate-color-of-uinavigationbar
    private var _preferredStyle = UIStatusBarStyle.default;
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return _preferredStyle
        }
        set {
            _preferredStyle = newValue
            self.setNeedsStatusBarAppearanceUpdate()
        }
        
    }
    
    func animateNavigationColors() {
        
        self.setBeforePopNavigationColors()
        transitionCoordinator?.animate(alongsideTransition: { [weak self](context) in
            self?.setNavigationColors()
            }, completion: nil)
    }
    
    func setBeforePopNavigationColors() {
        //Override in subclasses
    }
    
    func setNavigationColors() {
        //Override in subclasses
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let parent = navigationController?.viewControllers.last as? BaseVC{
            parent.animateNavigationColors()
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        self.setNavigationColors()
    }
}

