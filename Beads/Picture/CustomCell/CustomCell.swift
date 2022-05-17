//
//  CustomCell.swift
//  RickAndMortyTestProject
//
//  Created by Xenia Sidorova on 04.04.2021.
//

import UIKit

class CustomCell: UICollectionViewCell {

    @IBOutlet weak var cellView: UIView!

    override func awakeFromNib() {
      super.awakeFromNib()
      layer.borderColor = UIColor.black.cgColor
      layer.borderWidth = 1
      layer.cornerRadius = CGFloat(15.0)
      

//        let gradientLayer:CAGradientLayer = CAGradientLayer()
//        gradientLayer.frame = cellView.bounds
//        gradientLayer.colors =
//        [UIColor.black.cgColor, UIColor.clear.cgColor, UIColor.clear.cgColor, UIColor.clear.cgColor, UIColor.black.cgColor]
//        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
//        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
//        gradientLayer.locations = [0.0, 1.0]
//        gradientLayer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
//        cellView.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func configure(color: UIColor? = UIColor.red) {
        backgroundColor = color
    }
}
