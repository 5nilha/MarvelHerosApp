//
//  ViewController.swift
//  MarvelHerosApp
//
//  Created by Fabio Quintanilha on 12/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var figureCard: FigureCard!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickTest(_ sender: Any) {
        figureCard.isHightlighted = !figureCard.isHightlighted
    }
    
}

