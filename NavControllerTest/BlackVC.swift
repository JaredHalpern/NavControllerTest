//
//  BlackVC.swift
//  NavControllerTest
//
//  Created by Jared Halpern on 3/5/19.
//

import UIKit

class BlackVC: BaseVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let button = UIButton()
        view.addSubview(button)
        button.layer.cornerRadius = 12.0
        button.backgroundColor = .blue
        button.setTitle("Push VC", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }
    
    @objc func didTapButton(_ sender: UIButton) {
        navigationController?.pushViewController(WhiteVC(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //        navigationController?.navigationBar.barStyle = .blackOpaque
        //        navigationController?.navigationBar.isTranslucent = false
        //        navigationController?.navigationBar.tintColor = .white
        
        //        self.navigationController?.navigationBar.tintAdjustmentMode = .normal
        //        self.navigationController?.navigationBar.tintAdjustmentMode = .automatic
    }
    
    override func setBeforePopNavigationColors() {
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.preferredStatusBarStyle = UIStatusBarStyle.default
    }
    
    override func setNavigationColors() {
//        navigationController?.navigationBar.barTintColor = UIColor.red
//        navigationController?.navigationBar.tintColor = UIColor.blue
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.tintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.preferredStatusBarStyle = UIStatusBarStyle.default
    }
}
