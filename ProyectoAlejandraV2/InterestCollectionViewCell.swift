
//
//  InterestCollectionViewCell.swift
//  ProyectoAlejandraV2
//
//  Created by User on 11/21/19.
//  Copyright © 2019 Iconic. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell
{
    //Outlets
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    var interest: Interest? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI()
    {
        if let interest = interest {
            featuredImageView.image = interest.featuredImage
            interestTitleLabel.text = interest.title
            backgroundColorView.backgroundColor = interest.color
            
            backgroundColorView.layer.cornerRadius = 10.0
            backgroundColorView.layer.masksToBounds = true
            featuredImageView.layer.cornerRadius = 10.0
            featuredImageView.layer.masksToBounds = true
        } else {
            featuredImageView.image = nil
            interestTitleLabel.text = nil
            backgroundColorView.backgroundColor = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 5, height: 10)
        
        self.clipsToBounds = false
    }
}






















