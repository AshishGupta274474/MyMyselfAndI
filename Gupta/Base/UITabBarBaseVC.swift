//
//  UIBaseTabViewController.swift
//  Gupta
//
//  Created by Ashish Gupta on 11/04/21.
//

import UIKit

class UITabBarBaseVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
}
