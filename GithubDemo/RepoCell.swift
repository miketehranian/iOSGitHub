//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Mike Tehranian on 10/20/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var repoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    public func setRepo(repo: GithubRepo) {
        nameLabel.text = repo.name!
        ownerLabel.text = repo.ownerHandle!
        starsLabel.text = "\(repo.stars!)"
        forksLabel.text = "\(repo.forks!)"
        descriptionLabel.text = repo.repoDescription!
        
        repoImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
        
        print("MDT: DESCRIPTION: \(repo.repoDescription!)")
        print("MDT: AVATAR URL: \(repo.ownerAvatarURL!)")
    }
    
    
}
