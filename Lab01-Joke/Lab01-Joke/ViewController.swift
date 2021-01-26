//
//  ViewController.swift
//  Lab01-Joke
//
//  Created by William Wilson on 1/25/21.
//

import UIKit
class ViewController: UIViewController {
 @IBOutlet var jokeLabel: UILabel!
 @IBOutlet var punchlineLabel: UILabel!

 override func viewDidLoad() {
 super.viewDidLoad()
 // Do any additional setup after loading the view.
 }
 @IBAction func showJoke(_ sender: UIButton) {
    jokeLabel.text = "Want to hear a roof joke?"
 }
 @IBAction func showPunchline(_ sender: UIButton) {
    punchlineLabel.text = "The first ones's on the house."
 }
}
