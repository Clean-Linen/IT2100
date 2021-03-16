//
//  ArtistViewCell.swift
//  Lab8-TableView
//
//  Created by William Wilson on 3/15/21.
//

import UIKit

class ArtistViewCell: UITableViewCell {
    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Artist: UILabel!
    @IBOutlet weak var Time: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
