//
//  MenuButton.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit

class MarketCollectionView: UIView{
    var collectionView: UICollectionView!
    
    func setupView(){
        
        self.addSubview(collectionView)
        collectionView.setConstraints([
            .top(padding: 5, from: nil),
            .horizontal(padding: 5),
            .bottom(padding: 0, from: bottomAnchor)
        ])
        collectionView.backgroundColor = .systemBlue
    }
}
