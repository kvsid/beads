//
//  PictureViewController.swift
//  Beads
//
//  Created by Xenia Sidorova on 20.04.2022.
//

import UIKit

class PictureViewController: UIViewController {

    @IBOutlet weak var schemeTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        schemeTableView.delegate = self
//        schemeTableView.dataSource = self
        schemeTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")

    }


}

//extension PictureViewController: UITableViewDelegate {
//
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////            let width = Int(UserDefaults().width ?? "1")
////            return width!
//
//        let height = Int(UserDefaults().height ?? "1")
//        return height!
//
//    }
//
//    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell {
//            cell.configure(color: .red)
//                return cell
//        }
//        return UITableViewCell()
//    }
//}

extension PictureViewController: UICollectionViewDelegate {

    
}
