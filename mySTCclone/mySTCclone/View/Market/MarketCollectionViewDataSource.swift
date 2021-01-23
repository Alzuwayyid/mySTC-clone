//
//  MarketCollectionViewDataSource.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit

class MarketCollectionViewDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate{
    private static var headerKind = "headerKind"
    private var headerIdentfier = "header"
    private var orderCellIdentfier = "orderCellIdentfier"
    private var productsCells = "productsCells"

    private var tempDescArr = ["شريحة جوال وكويك نت","حول رقمك","تأسيس بيتي إنترنت"]
    private var tempDisc = ["%15","%75","%20","جديد"]
    private var tempArrOfHeadersNames = ["header1","header2","header3"]
    private var tempColors = [customColors.lightRed,customColors.lightBlue]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let reuseIdentifier = "CategoryCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MarketCategoriesCollectionViewCell
        
        if indexPath.section == 0{
            cell.backgroundColor = customColors.lightRed
            cell.headerImage.image = UIImage(named: tempArrOfHeadersNames.randomElement()!)
        }
        else if indexPath.section == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: orderCellIdentfier, for: indexPath) as! OrderCell
            cell.backgroundColor = customColors.lightGreen
            cell.label.text = tempDescArr.randomElement()
            cell.image.image = UIImage(systemName: "homekit")
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: productsCells, for: indexPath) as! ProductsCell
            cell.productImageView.image = UIImage(named: "iphone")
            cell.productDiscountView.text = tempDisc.randomElement()
            if cell.productDiscountView.text == "جديد"{
                cell.productDiscountView.backgroundColor = customColors.lightBlue
            }
            else{
                cell.productDiscountView.backgroundColor = customColors.lightRed
            }
            cell.categoryNameLabel.text = "سامسونج"
            cell.productNameLabel.text = "iPhone 12 Max"
            cell.priceLabel.text = "من 3799.50 ريال"
            cell.backgroundColor = .white
            return cell
        }
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentfier, for: indexPath) as! Header
        if indexPath.section == 1 {
            header.label.text = "اطلب رقم جديد"
            header.label.font = UIFont(name: "stc", size: 20)
        }
        else if indexPath.section == 0{
            
        }
        else{
            header.label.text = "أحدث الاجهزة"
            header.label.font = UIFont(name: "stc", size: 20)
        }
        return header
    }
}


extension MarketCollectionViewDataSource{
    func createLayout() -> UICollectionViewLayout {
        
        return UICollectionViewCompositionalLayout { (section, env) -> NSCollectionLayoutSection in
            
            if section == 0{
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(370), heightDimension: .estimated(200))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = NSDirectionalEdgeInsets(top: 0 , leading: 15, bottom: 0, trailing: 15)
                section.interGroupSpacing = 10
                section.contentInsets.bottom = 5
                
                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: MarketCollectionViewDataSource.headerKind, alignment: .topLeading)
                ]
                
                return section
            }
            else if section == 1 {
                
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(145), heightDimension: .estimated(120))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = NSDirectionalEdgeInsets(top: 0 , leading: 15, bottom: 0, trailing: 15)
                section.interGroupSpacing = 10
                section.contentInsets.bottom = 5
                
                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: MarketCollectionViewDataSource.headerKind, alignment: .topLeading)
                ]
                
                return section
            }
            else{
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(120), heightDimension: .estimated(190))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.contentInsets = NSDirectionalEdgeInsets(top: 0 , leading: 15, bottom: 0, trailing: 15)
                section.interGroupSpacing = 10
                section.contentInsets.bottom = 5
                
                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: MarketCollectionViewDataSource.headerKind, alignment: .topLeading)
                ]
                
                return section
            }

        }
    }
}
