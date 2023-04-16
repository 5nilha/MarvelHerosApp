//
//  FigureCard.swift
//  MarvelHerosApp
//
//  Created by Fabio Quintanilha on 14/04/23.
//


import UIKit

@IBDesignable class FigureCard: UIView {
    
    private var hightligtedColor: UIColor = .red
    private var primaryViewColor: UIColor = .black
    
    private var imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.clipsToBounds = true
        imgView.image = UIImage(named: "img_test")
        return imgView
    }()
    
    private var titleView: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I'm a Hero"
        return label
    }()
    
    private var separator: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    private func commonInit() {
        self.backgroundColor = .black
        self.addSubview(imageView)
        self.addSubview(separator)
        self.addSubview(titleView)
        self.layer.cornerRadius = 30
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner]
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 4
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            imageView.heightAnchor.constraint(equalToConstant: self.frame.height / 1.3),
            separator.heightAnchor.constraint(equalToConstant: 4),
            separator.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0),
            separator.leadingAnchor.constraint(equalTo: leadingAnchor),
            separator.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleView.topAnchor.constraint(equalTo: separator.bottomAnchor, constant: 10),
            titleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
            titleView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 6)
        ])
    }
    
    @IBInspectable var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    @IBInspectable var title: String? {
        didSet {
            titleView.text = title
        }
    }
    
    var isHightlighted: Bool = false {
        didSet {
            self.backgroundColor = isHightlighted ? hightligtedColor : primaryViewColor
        }
    }
}
