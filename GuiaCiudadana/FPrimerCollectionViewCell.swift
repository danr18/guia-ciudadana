//
//  PrimerCollectionViewCell.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class FPrimerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lessonLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var lesson: String? {
        didSet {
            lessonLabel.text = lesson
        }
   
    }
    
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
}
