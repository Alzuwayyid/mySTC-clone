//
//  MarketView.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit

class MarketView: UIView{
    var menuButton: UIView!
    let customColors = StcColors()
    
    func setupView(){
        backgroundColor = customColors.purple
        self.addSubview(menuButton)
        
        menuButton.setConstraints([
            .top(padding: 0, from: topAnchor),
            .horizontal(padding: 0),
            .bottom(padding: 0, from: bottomAnchor)
        ])
    }
}
