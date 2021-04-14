//
//  ViewController.swift
//  Gupta
//
//  Created by Ashish Gupta on 11/04/21.
//

import UIKit

class ViewController: UIViewController {
    var appeared: Bool = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if appeared == false  {
            let vc = MMITabBarController.init()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false) {
                self.appeared = true
            }
        }
    }
}





