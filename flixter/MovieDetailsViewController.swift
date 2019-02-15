//
//  MovieDetailsViewController.swift
//  flixter
//
//  Created by Ervy on 2/11/19.
//  Copyright © 2019 Angelo m. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
   //dragged varibles
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String: Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String; titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String; synopsisLabel.sizeToFit()
     
        //'let' " " is assigning a variable and giving it values
        let baseUrl = "https://image.tmdb.org/t/p/w185" //holds the image and resolution path
        
        //setsteps to set up poster url and poster image
        let posterPath = movie["poster_path"] as! String //parses as string
        let posterUrl = URL(string: baseUrl + posterPath) //converts url and posterpath to one URL string
       posterView.af_setImage(withURL: posterUrl!) //set image
        
        //set steps for backdropimage/URL
        let backdropPath = movie["backdrop_path"] as! String //backdrop image parse
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath) //add two to add URL string together
        backdropView.af_setImage(withURL:backdropUrl!)
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
