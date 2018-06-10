//
//  RoundedButton.swift
//  My First App
//
//  Created by Adam Ghaleb on 09.06.18.
//  Copyright © 2018 Adam Ghaleb. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        layer.cornerRadius = frame.size.height/2
    }
}
