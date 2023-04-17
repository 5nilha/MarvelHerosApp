//
//  ListCell.swift
//  MarvelHerosApp
//
//  Created by Fabio Quintanilha on 16/04/23.
//

import UIKit

class ListCell: UICollectionView {
    
    static var identifier: String = "ListCell"
    
    @IBOutlet weak private var labeledCard: LabeledCard?
    
    var image: UIImage? {
        didSet {
            labeledCard?.image = image
        }
    }
    
    var headline: String? {
        didSet {
            labeledCard?.headline = headline
        }
    }
    
    var info: String? {
        didSet {
            labeledCard?.info = info
        }
    }
    
}
