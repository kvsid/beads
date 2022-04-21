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
       let height = Int(UserDefaults().height ?? "1")
       return height!
        }


   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       let width = Int(UserDefaults().width ?? "1")
       return width!
        }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCell

            return cell
    }

//    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCell
//        cell.backgroundColor = UIColor.red
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCell
//        cell.backgroundColor = UIColor.cyan
//    }

//    private func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CustomCell
//        cell.backgroundColor = UIColor.red
//    }
//
//    private func collectionView(_ collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CustomCell
//        cell.backgroundColor = UIColor.cyan
//    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CustomCell
//        cell.cellView.layer.borderColor = UIColor.red.cgColor
        cell.backgroundColor = .red
//        cell.configure()
    }
}
