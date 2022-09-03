//
//  ViewController.swift
//  Demo
//
//  Created by Asif on 02/09/22.
//

import UIKit

protocol HomeNavigatorDelegate: AnyObject {
    func dismiss()
}

class HomeViewController: UIViewController {

    weak var delegate: HomeNavigatorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func btnFirstVCTapped(_ sender: UIButton) {
        
        let firstVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        firstVC.homeVC = self
        let nvc = UINavigationController(rootViewController: firstVC)
        nvc.setNavigationBarHidden(true, animated: false)
        nvc.hidesBottomBarWhenPushed = true
        nvc.modalPresentationStyle = .overCurrentContext
        present(nvc, animated: true, completion: nil)
    }
    
}

