//
//  TrackCellTableViewCell.swift
//  Flixter
//
//  Created by Jane Calnick on 9/19/23.
//

import UIKit
import Nuke

class TrackCellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

  
    @IBOutlet weak var movieImageView: UIImageView!
    
  
    @IBOutlet weak var movieNameLabel: UILabel!
 
    
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    
    /// Configures the cell's UI for the given track.
    func configure(with movies: Movies) {
        movieNameLabel.text = movies.title
        movieDescriptionLabel.text = movies.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movies.poster_path, into: movieImageView)
    }
}
