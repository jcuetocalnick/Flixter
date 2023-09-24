//
//  ViewController.swift
//  Flixter
//
//  Created by Jane Calnick on 9/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell with identifier, "TrackCell"
        // the `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCellTableViewCell", for: indexPath) as! TrackCellTableViewCell

        // Get the track that corresponds to the table view row
        let movies = movies[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: movies)

        // return the cell for display in the table view
        return cell

    }
    var movies : [Movies] = []
    
    
 
   
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movies = Movies.mockMovies
        print(movies)
        
        tableView.dataSource = self
    }
    
   
    
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the cell that triggered the segue
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {

            // Use the index path to get the associated track
            let movies = movies[indexPath.row]

            // Set the track on the detail view controller
            detailViewController.movies = movies
        }
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Get the index path for the current selected table view row (if exists)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    

    

    
}

