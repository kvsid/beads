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
        cellView.layer.borderColor = UIColor.black.cgColor
        cellView.layer.borderWidth = 1
    }
    
    func configure(color: UIColor? = UIColor.red) {
        cellView.backgroundColor = color
    }
}
