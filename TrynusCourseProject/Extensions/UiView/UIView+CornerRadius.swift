//
//  UIView+CornerRadius.swift
//  TrynusCourseProject
//
//  Created by Trynus Fedir on 26.03.2024.
//

import UIKit

extension UIView {
    func setCornerRadius (_ radius: CGFloat) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
}
