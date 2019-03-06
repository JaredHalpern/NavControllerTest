//
//  RedVC.swift
//  NavControllerTest
//
//  Created by Jared Halpern on 3/5/19.
//

import UIKit

class WhiteVC: BaseVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationController?.navigationBar.barStyle = .default
//        navigationController?.navigationBar.isTranslucent = false
//        navigationController?.navigationBar.tintColor = .black
        
        self.view.backgroundColor = .black
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //        navigationController?.navigationBar.barStyle = .blackOpaque
        //        navigationController?.navigationBar.isTranslucent = false
        //        navigationController?.navigationBar.tintColor = .white
        
    }
    
    override func setNavigationColors(){
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.preferredStatusBarStyle = UIStatusBarStyle.lightContent
    }
}
