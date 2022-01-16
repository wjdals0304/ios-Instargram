//
//  FeedTableViewCell.swift
//  Instargram
//
//  Created by 김정민 on 2022/01/16.
//

import Foundation
import UIKit



final class FeedTableViewCell: UITableViewCell {
    
    private lazy var postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .tertiaryLabel
        return imageView
    }()
    
    private lazy var likeButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "heart")
        
        
       return button
    }()
    
    private lazy var commentButton : UIButton = {
        let button = UIButton()
        
        button.setImage(systemName: "message")

       return button
    }()
    
    private lazy var directMessageButton :UIButton = {
        let button = UIButton()
       
        button.setImage(systemName: "paperplane")

       return button
    }()
    
    private lazy var bookmarkButton: UIButton = {
        let button = UIButton()
     
        button.setImage(systemName: "bookmark")

       return button
    }()
    
    private lazy var currentLikedCountLabel : UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 13.0, weight: .semibold)
        label.text = "홍길동님의 외 32명이 좋아합니다."
        return label
    }()
    
    private lazy var contentsLabel : UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 13.0, weight: .medium)
        label.numberOfLines = 0
        label.text = "컴투스(078340)는 자사의 실시간 전략 대전 게임 서머너즈 워: 백년전쟁’(이하 백년전쟁)이 새해를 맞아 신규 전설 몬스터를 추가하는 업데이트를 실시했다고 14일 밝혔다. 메인 스킬 ‘영원한 상처’를 통해 적 전열 몬스터들의 방어력을 약화시킬 수 있을 뿐만 아니라 적들의 최대 체력까지 파괴하는 광역 스킬을 자랑한다.메인 스킬 ‘영원한 상처’를 통해 적 전열 몬스터들의 방어력을 약화시킬 수 있을 뿐만 아니라 적들의 최대 체력까지 파괴하는 광역 스킬을 자랑한다.메인 스킬 ‘영원한 상처’를 통해 적 전열 몬스터들의 방어력을 약화시킬 수 있을 뿐만 아니라 적들의 최대 체력까지 파괴하는 광역 스킬을 자랑한다."
        
        return label
    }()
    
    private lazy var dateLabel : UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 11.0, weight: .medium)
        label.text = "1일전"
        return label
    }()
    
    func setUp() {
        
        [
         postImageView,
         likeButton,
         commentButton,
         directMessageButton,
         bookmarkButton,
         currentLikedCountLabel,
         contentsLabel,
         dateLabel
        ].forEach { addSubview($0) }
        
        postImageView.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview()
            $0.height.equalTo(postImageView.snp.width)
        }
        let buttonWidth: CGFloat = 24.0
        let buttonInset: CGFloat = 16.0
        
        likeButton.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(buttonInset)
            $0.top.equalTo(postImageView.snp.bottom).offset(buttonInset)
            $0.width.equalTo(buttonWidth)
            $0.height.equalTo(buttonWidth)
        }
        
        commentButton.snp.makeConstraints {
            $0.leading.equalTo(likeButton.snp.trailing).offset(12.0)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.equalTo(buttonWidth)
            $0.height.equalTo(buttonWidth)
        }
        
        directMessageButton.snp.makeConstraints{
            
            $0.leading.equalTo(commentButton.snp.trailing).offset(12.0)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.equalTo(buttonWidth)
            $0.height.equalTo(buttonWidth)
        }
        
        bookmarkButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(buttonInset)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.equalTo(buttonWidth)
            $0.height.equalTo(buttonWidth)
        }
        
        currentLikedCountLabel.snp.makeConstraints{
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(likeButton.snp.bottom).offset(14.0)
        }
        
        contentsLabel.snp.makeConstraints {
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(currentLikedCountLabel.snp.bottom).offset(8.0)
        }
        
        dateLabel.snp.makeConstraints{
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(contentsLabel.snp.bottom).offset(8.0)
            $0.bottom.equalToSuperview().inset(16.0)
        }
    
    }
}
