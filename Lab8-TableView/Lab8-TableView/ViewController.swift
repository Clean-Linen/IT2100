//
//  ViewController.swift
//  Lab8-TableView
//
//  Created by William Wilson on 3/15/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView?
    var Songs: [String] = []
    var Artists: [String] = []
    var Times: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.dataSource = self
        tableView?.delegate = self
    
        addMusic("Kid Goku", "Maitro", "2:34")
        addMusic("Say It First", "Clean Linen", "3:41")
        addMusic("Traffic", "Thom Yorke", "5:18")
    }
    
    func addMusic(_ title: String, _ artist: String, _ time: String){
        self.Songs.append(title)
        self.Artists.append(artist)
        self.Times.append(time)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell")
        as! ArtistViewCell
        cell.Title.text = self.Songs[indexPath.item]
        cell.Artist.text = self.Artists[indexPath.item]
        cell.Time.text = self.Times[indexPath.item]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Music"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
