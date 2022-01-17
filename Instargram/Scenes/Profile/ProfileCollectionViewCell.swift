//
//  ProfileCollectionViewCell.swift
//  Instargram
//
//  Created by 김정민 on 2022/01/17.
//

import Foundation
import UIKit


final class ProfileCollectionViewCell : UICollectionViewCell {
    private let imageView = UIImageView()
    
    func setup(with image: UIImage) {
        addSubview(imageView)
        imageView.snp.makeConstraints{ $0.edges.equalToSuperview() }
        
        imageView.backgroundColor = .tertiaryLabel
        
        
    }
    
}
