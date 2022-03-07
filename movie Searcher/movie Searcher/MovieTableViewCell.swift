//
//  MovieTableViewCell.swift
//  movie Searcher
//
//  Created by ROHIT DAS on 07/03/22.
//

import UIKit


class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet var movieTitleLabel:UILabel!
    @IBOutlet var movieYearLabel:UILabel!
    @IBOutlet var moviePosterImageview:UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    static let identifier = "MovieTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MovieTableViewCell", bundle: nil)
    }
    
    func configure(with model: Movie){
        self.movieTitleLabel.text=model.Title
        self.movieYearLabel.text=model.Year
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!){
            self.moviePosterImageview.image = UIImage(data: data)
        }
    }
}
