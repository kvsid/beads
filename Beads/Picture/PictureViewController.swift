//
//  PictureViewController.swift
//  Beads
//
//  Created by Xenia Sidorova on 20.04.2022.
//

import UIKit

class PictureViewController: UIViewController {

    @IBOutlet weak var schemeCollectionView: UICollectionView!
    @IBOutlet weak var paletteButton: UIButton!

    let reuseIdentifier = "CustomCell"
    var cellColor : UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        schemeCollectionView.delegate = self
        schemeCollectionView.dataSource = self
        schemeCollectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
      
//      if let itemsInRow = UserDefaults().width {
//          if let number = Int(itemsInRow) {
//              let itemsInRow = CGFloat(Int(number))
//              let screenSize = UIScreen.main.bounds
//      //      Screen().bounds
//              let screenWidth = screenSize.width
//    //        let screenHeight = screenSize.height
//
//            // Do any additional setup after loading the view, typically from a nib
//              let layout = UICollectionViewFlowLayout()
//      //      layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 10, right: 0)
//              layout.itemSize = CGSize(width: screenWidth / itemsInRow, height: screenWidth / itemsInRow)
//            schemeCollectionView.setCollectionViewLayout(layout, animated: false)
//          }
//          
//  //        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
//        }
    }
  
    @IBAction func paletteButtonPressed(_ sender: UIButton) {
        showColorPicker()
    }
  
    private func showColorPicker() {
        let colorPickerVC = UIColorPickerViewController()
        colorPickerVC.delegate = self
        present(colorPickerVC, animated: true)
    }
}

extension PictureViewController: UICollectionViewDelegate, UICollectionViewDataSource {

   func numberOfSections(in collectionView: UICollectionView) -> Int {
       if let height = Int(UserDefaults().height ?? "4") {
           return height } else { return 1 } // TODO: Change me.
  }

   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       if let width = Int(UserDefaults().width ?? "4") {
           return width } else { return 12 } // TODO: Change me.
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CustomCell
      
        if let cellColor = cellColor {
            cell.configure(color: cellColor)
        } else {
            showColorPicker()
        }
    }

}

extension PictureViewController: UIColorPickerViewControllerDelegate {

//    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
//    }

    func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
        cellColor = viewController.selectedColor
    }
}


//class CustomCellLayout: UICollectionViewFlowLayout {
//    override func prepare() {
//        super.prepare()
//
//
//        guard let collectionView = collectionView else { return }
//        
//        let availableWidth = collectionView.bounds.inset(by: collectionView.layoutMargins).width
//        let maxNumColumns = 12 // Int(availableWidth / 1)
//        let cellWidth = (availableWidth / CGFloat(maxNumColumns)).rounded(.down)
//        
//        self.itemSize = CGSize(width: 10, height: 10)
//        self.sectionInset = UIEdgeInsets(top: self.minimumInteritemSpacing, left: 0.0, bottom: 0.0, right: 0.0)
//        self.sectionInsetReference = .fromSafeArea
//    }
//}
