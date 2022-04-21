//
//  SizeViewController.swift
//  Beads
//
//  Created by Xenia Sidorova on 20.04.2022.
//

import UIKit

class SizeViewController: UIViewController {

    @IBOutlet weak var widthLabel: UILabel!
    @IBOutlet weak var widthTextField: UITextField!

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!

    @IBOutlet weak var enterButton: UIButton!

    @IBAction func enterPressed(_ sender: UIButton) {
        UserDefaults().height = heightTextField.text
        UserDefaults().width = widthTextField.text
//        navigationController?.pushViewController(PictureViewController(), animated: true)

        let storyBoard : UIStoryboard = UIStoryboard(name: "Picture", bundle:nil)
        let pictureViewController = storyBoard.instantiateViewController(withIdentifier: "PictureViewController") as! PictureViewController
        self.navigationController?.pushViewController(pictureViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = "Высота"
        widthLabel.text = "Ширина"
    }
}
