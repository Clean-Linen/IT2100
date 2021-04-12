//
//  ViewController.swift
//  Lab12-PresentView
//
//  Created by William Wilson on 4/12/21.
//

import UIKit

class ViewController: UIViewController {

    private let tellMeSomethingButton: UIButton = {
        let button = UIButton(frame:  CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemTeal
        button.setTitle("Be at Ease...", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(tellMeSomethingButton)
        tellMeSomethingButton.center = view.center
        tellMeSomethingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        let vc = SecondViewController()
        vc.modalPresentationStyle = .formSheet
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }


}

class SecondViewController: UIViewController {
    private let tellMeSomethingLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        label.text = "It's been taught that your worst enemy couldn't harm you as much as your own wicked thoughts."
        label.textAlignment = .center
        label.numberOfLines = 4
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(tellMeSomethingLabel)
        tellMeSomethingLabel.center = view.center
    }
}
