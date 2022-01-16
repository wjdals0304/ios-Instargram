//
//  UIButton+extension.swift
//  Instargram
//
//  Created by 김정민 on 2022/01/16.
//

import UIKit

extension UIButton {
    func setImage(systemName: String) {
        contentHorizontalAlignment = .fill
        contentVerticalAlignment = .fill
        
        imageView?.contentMode = .scaleAspectFit
        imageEdgeInsets = .zero
        
        setImage(UIImage(systemName: systemName),for: .normal)
    }
}
