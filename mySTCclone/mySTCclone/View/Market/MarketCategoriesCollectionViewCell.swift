//
//  MarketCategoriesCollectionViewCell.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit

class MarketCategoriesCollectionViewCell: UICollectionViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()

//        self.contentView.layer.cornerRadius = 7
        let margins = UIEdgeInsets(top: 0, left: 0.0, bottom: 0, right: 0.0)
        contentView.frame = contentView.frame.inset(by: margins)
        contentView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        contentView.layer.shadowOpacity = 0.4
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowRadius = 5
        contentView.layer.masksToBounds = true
        contentView.layer.borderWidth = 0.3
        contentView.tintColor = .white
    }
}

class Header: UICollectionReusableView {
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label.text = ""
        label.font = UIFont(name: "stc", size: 20)
        label.textColor = .white
        label.textAlignment = .right

        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class OrderCell: UICollectionViewCell {
    let image = UIImageView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpCell() {
        self.layer.masksToBounds = true
        
        addSubview(label)
        addSubview(image)
        label.setConstraints([
            .leading(padding: 0, from: image.trailingAnchor),
            .vertical(padding: 26),
            .trailing(padding: 0, from: trailingAnchor),
            .horizontal(padding: 4)
        ])
        image.setConstraints([
            .leading(padding: 0, from: leadingAnchor),
            .trailing(padding: 15, from: trailingAnchor),
            .horizontal(padding: 110),
            .height(30)
        ])
        label.font = UIFont(name: "stc", size: 18)
        label.textColor = .white
        label.textAlignment = .right
        label.numberOfLines = 0
        
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
    }
}
