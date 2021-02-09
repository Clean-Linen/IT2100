//
//  ViewController.swift
//  WorldTrotter
//
//  Created by William Wilson on 2/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient.frame = view.bounds
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        let layer = CAGradientLayer()
        layer.colors = [UIColor.gray.cgColor,
                       UIColor.white.cgColor]
    }
    
    let gradient: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor.gray.cgColor,
                        UIColor.white.cgColor]
        return layer
    
    }()


}

