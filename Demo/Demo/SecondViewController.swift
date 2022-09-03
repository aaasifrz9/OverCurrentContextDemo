//
//  SecondViewController.swift
//  Demo
//
//  Created by Asif on 02/09/22.
//

import UIKit

class SecondViewController: UIViewController {

    weak var firstVC: FirstViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("SecondViewController deinit called")
    }
    
    @IBAction func closeTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        firstVC?.dismiss(animated: true, completion: nil)
    }
}
