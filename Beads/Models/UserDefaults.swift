//
//  UserDefaults.swift
//  Beads
//
//  Created by Xenia Sidorova on 20.04.2022.
//

import Foundation

extension UserDefaults {

    var width: String? {
        get { return string(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }

    var height: String? {
        get { return string(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }
}
