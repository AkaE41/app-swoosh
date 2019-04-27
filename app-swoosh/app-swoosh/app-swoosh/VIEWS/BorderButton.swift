//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Khaled on 4/19/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
