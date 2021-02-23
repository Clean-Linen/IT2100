//
//  ViewController.swift
//  Lab05-AppleInfo
//
//  Created by William Wilson on 2/22/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    enum links: String {
        case Apple = "https://en.wikipedia.org/wiki/Apple_Inc"
        case iOS = "https://en.wikipedia.org/wiki/IOS"
        case Xcode = "https://en.wikipedia.org/wiki/Xcode"
        case Swift = "https://en.wikipedia.org/wiki/Swift_(programming_language)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLink(url: links.Apple)
    }
    
    @IBOutlet var AppleLink: UISegmentedControl!
    @IBOutlet var webView: WKWebView!
    
    @IBAction func changeAppleLink(_ sender: Any) {
        switch (AppleLink.titleForSegment(at: AppleLink.selectedSegmentIndex)) {
        case "Apple":
            displayLink(url: links.Apple)
        case "iOS":
            displayLink(url: links.iOS)
        case "Xcode":
            displayLink(url: links.Xcode)
        case "Swift":
            displayLink(url: links.Swift)
        default:
            break
        }
    }
    
    func displayLink(url: links) {
        let myURL = URL(string: url.rawValue)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
