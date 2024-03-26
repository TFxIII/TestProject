//
//  DetailViewController.swift
//  TrynusCourseProject
//
//  Created by Trynus Fedir on 25.03.2024.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var coordinator: MainCoordinator?
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showMovieData()
    }
    
    private func showMovieData() {
        guard let movie = movie else { return }
        title = movie.title
        posterImageView.load(path: movie.backdropPath)
        titleLabel.text = movie.originalLanguage
        subTitleLabel.text = movie.overview
        
    }
    @IBAction func backButtonAction(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
