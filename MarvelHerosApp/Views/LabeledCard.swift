//
//  LabeledCard.swift
//  MarvelHerosApp
//
//  Created by Fabio Quintanilha on 15/04/23.
//

import UIKit

@IBDesignable class LabeledCard: UIView {
    
    private (set) var imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.clipsToBounds = true
        imgView.image = UIImage(named: "img_test")
        imgView.sizeToFit()
        return imgView
    }()
    
    private var vSeparator: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    private (set) var headLineView: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I'm a Hero"
        label.numberOfLines = 0
        return label
    }()
    
    private (set) var infoView: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I'm the super hero who will save the world."
        return label
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
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        self.backgroundColor = .white
        self.layer.cornerRadius = 30
        setShadow()
        setConstraints()
        
    }
    
    private func setupCorners() {
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        self.backgroundColor = .white
        self.layer.cornerRadius = 30
    }
    
    private func setShadow() {
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 4
    }
    
    private func setConstraints() {
        self.addSubview(imageView)
        self.addSubview(vSeparator)
        self.addSubview(headLineView)
        self.addSubview(infoView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            imageView.widthAnchor.constraint(equalToConstant: self.frame.height / 1.13),
            vSeparator.topAnchor.constraint(equalTo: topAnchor),
            vSeparator.leadingAnchor.constraint(equalTo: imageView.trailingAnchor),
            vSeparator.widthAnchor.constraint(equalToConstant: 3),
            vSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            headLineView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            headLineView.leadingAnchor.constraint(equalTo: vSeparator.trailingAnchor, constant: 10),
            headLineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            infoView.topAnchor.constraint(equalTo: headLineView.bottomAnchor, constant: 5),
            infoView.leadingAnchor.constraint(equalTo: vSeparator.trailingAnchor, constant: 10),
            infoView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            infoView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -6)
        ])
    }
    
    @IBInspectable var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    @IBInspectable var headline: String? {
        didSet {
            headLineView.text = headline
        }
    }
    
    @IBInspectable var info: String? {
        didSet {
            infoView.text = info
        }
    }
    
}
