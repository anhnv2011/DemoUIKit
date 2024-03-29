//
//  BaseViewController.swift
//  DemoMVVM
//
//  Created by MAC on 8/4/22.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupUI()
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK : setup Data & UI
    func setupData() {
    }
    
    func setupUI() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back",
                                                                style: .plain,
                                                                target: nil,
                                                                action: nil)
    }
    
}
