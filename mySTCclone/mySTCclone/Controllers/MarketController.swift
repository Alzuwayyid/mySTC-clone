//
//  MarketController.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit

class MarketController: UIViewController{
//    var collectionView: UICollectionView!
    let customColors = StcColors()
    let collectionViewDataSource = MarketCollectionViewDataSource()
    private var headerIdentfier = "header"
    private static var headerKind = "headerKind"
    private var orderCellIdentfier = "orderCellIdentfier"
    private var productsCells = "productsCells"
    
    @IBOutlet var label: UILabel!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var categoriesCollectionView: UICollectionView!
    @IBOutlet var adsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.font = UIFont(name: "stc", size: 23)
        label.text = "المتجر"
        
        // MARK: - Delegation
        categoriesCollectionView.dataSource = collectionViewDataSource
        
        // MARK: - Configuration
        categoriesCollectionView.collectionViewLayout = collectionViewDataSource.createLayout()
        categoriesCollectionView.register(Header.self, forSupplementaryViewOfKind: MarketController.headerKind, withReuseIdentifier: headerIdentfier)
        categoriesCollectionView.register(OrderCell.self, forCellWithReuseIdentifier: orderCellIdentfier)
        categoriesCollectionView.register(ProductsCell.self, forCellWithReuseIdentifier: productsCells)

    }
}
