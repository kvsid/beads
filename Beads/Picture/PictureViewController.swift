//
//  PictureViewController.swift
//  Beads
//
//  Created by Xenia Sidorova on 20.04.2022.
//

import UIKit

class PictureViewController: UIViewController {

    @IBOutlet weak var schemeCollectionView: UICollectionView!

    let reuseIdentifier = "CustomCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        schemeCollectionView.delegate = self
        schemeCollectionView.dataSource = self
        schemeCollectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")

    }
}

extension PictureViewController: UICollectionViewDelegate, UICollectionViewDataSource {

   func numberOfSections(in collectionView: UICollectionView) -> Int {
     if let height = Int(UserDefaults().height ?? "4") {
       return height } else { return 4 }
  }


   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     if let width = Int(UserDefaults().width ?? "4") {
       return width } else { return 4 }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCell
      return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      let cell = collectionView.cellForItem(at: indexPath) as! CustomCell
        cell.configure()
    }
}
