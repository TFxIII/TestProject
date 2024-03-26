//
//  UIImageView+Load.swift
//  TrynusCourseProject
//
//  Created by Trynus Fedir on 26.03.2024.
//

import UIKit
import SDWebImage

extension UIImageView {
    func load (path: String?) {
        guard let path = path else { return }
        sd_setImage(with: URL (string: Constant.imageBaseURL + path))
    }
}
