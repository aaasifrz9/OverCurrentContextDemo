//
//  FirstViewController.swift
//  Demo
//
//  Created by Asif on 03/09/22.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showSecondVC()
    }
    
    private func showSecondVC() {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        guard let nav = navigationController else {
            return
        }
        nav.pushViewController(secondVC, animated: true)
    }
}
