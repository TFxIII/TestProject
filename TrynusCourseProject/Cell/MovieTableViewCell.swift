//
//  MovieTableViewCell.swift
//  TrynusCourseProject
//
//  Created by Trynus Fedir on 26.03.2024.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var movieTitleLable: UILabel!
    
    @IBOutlet weak var movieSubTitleLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        posterImageView.setCornerRadius(4.0)
    }

    func setupCell (movie: Movie) {
        posterImageView.load(path: movie.posterPath)
        movieTitleLable.text = movie.title
        movieSubTitleLable.text = movie.overview
    }
    
}
