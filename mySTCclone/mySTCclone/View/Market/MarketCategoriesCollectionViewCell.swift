//
//  MarketCategoriesCollectionViewCell.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit
let customColors = StcColors()

class MarketCategoriesCollectionViewCell: UICollectionViewCell {

    @IBOutlet var headerImage: UIImageView!
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

class ProductsCell: UICollectionViewCell {
    let categoryNameLabel = UILabel()
    let productNameLabel = UILabel()
    let productImageView = UIImageView()
    let priceLabel = UILabel()
    let productDiscountView = UILabel(frame: CGRect(x: 20, y: 20, width: 10, height: 10))
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(){
        self.layer.masksToBounds = true
        addSubviews(categoryNameLabel,productNameLabel,productImageView,productDiscountView,priceLabel)
        
        productImageView.setConstraints([
            .top(padding: 10, from: productDiscountView.bottomAnchor),
            .right(padding: -5, from: rightAnchor),
            .left(padding: 5, from: leftAnchor),
            .height(80),
            .width(50)
        ])
        
        productDiscountView.setConstraints([
            .leading(padding: 0, from: leadingAnchor),
            .trailing(padding: 10, from: trailingAnchor),
            .horizontal(padding: 80),
            .height(23)
        ])
        
        categoryNameLabel.setConstraints([
            .top(padding: 3, from: productImageView.bottomAnchor),
            .left(padding: 11, from: leftAnchor),
        ])
        
        productNameLabel.setConstraints([
            .top(padding: -6, from: categoryNameLabel.bottomAnchor),
            .left(padding: 10, from: leftAnchor),
            .right(padding: 10, from: rightAnchor)
        ])
        
        priceLabel.setConstraints([
            .top(padding: -1, from: productNameLabel.bottomAnchor),
            .left(padding: 10, from: leftAnchor),
        ])
        
        priceLabel.font = UIFont(name: "stc", size: 16)
        priceLabel.textColor = customColors.purple
        
        productNameLabel.font = UIFont(name: "stc", size: 17)
        productNameLabel.textColor = .black
        productNameLabel.textAlignment = .left

        categoryNameLabel.font = UIFont(name: "stc", size: 12)
        categoryNameLabel.textColor = .systemGray
        
        productDiscountView.backgroundColor = customColors.lightBlue
        productDiscountView.font = UIFont(name: "stc", size: 12)
        productDiscountView.textColor = .white
        productDiscountView.textAlignment = .center
        productImageView.contentMode = .scaleAspectFit
//        productImageView.backgroundColor = .systemRed
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
