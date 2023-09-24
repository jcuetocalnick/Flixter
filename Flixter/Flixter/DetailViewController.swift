//
//  DetailViewController.swift
//  Flixter
//
//  Created by Jane Calnick on 9/20/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {


    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameView: UILabel!
    @IBOutlet weak var movieRatingView: UILabel!
    @IBOutlet weak var movieVoteView: UILabel!
    @IBOutlet weak var movieDescriptionView: UITextView!
    @IBOutlet weak var moviePopularity: UILabel!
    
    var movies: Movies!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Nuke.loadImage(with: movies.poster_path, into: movieImageView)
        
        movieNameView.text = movies.title
        movieRatingView.text = String(movies.vote_average)
        movieVoteView.text = String(movies.vote_count)
        movieDescriptionView.text = movies.overview
        moviePopularity.text = String(movies.popularity)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
