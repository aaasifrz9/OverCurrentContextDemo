//
//  FirstViewController.swift
//  Demo
//
//  Created by Asif on 03/09/22.
//

import UIKit

protocol FirstNavigatorDelegate: AnyObject {
    func dismiss()
}

class FirstViewController: UIViewController {

    weak var delegate: FirstNavigatorDelegate?
    weak var homeVC: HomeViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSecondVC()
    }
    
    private func showSecondVC() {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.firstVC = self
        guard let nav = navigationController else {
            return
        }
        nav.pushViewController(secondVC, animated: true)
    }
    
    deinit {
        print("FirstViewController deinit called")
    }
}
