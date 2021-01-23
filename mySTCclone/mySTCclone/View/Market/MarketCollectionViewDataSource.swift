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
    let customColors = StcColors()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let reuseIdentifier = "CategoryCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MarketCategoriesCollectionViewCell
        
        if indexPath.section == 0{
            cell.backgroundColor = customColors.lightRed
        }
        else if indexPath.section == 1{
            cell.backgroundColor = customColors.lightGreen
        }
        else{
            cell.backgroundColor = .white
        }
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentfier, for: indexPath) as! Header
        if indexPath.section == 0 {
            header.label.text = "اطلب رقم جديد"
            header.label.font = UIFont(name: "stc", size: 20)
        }else{
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
