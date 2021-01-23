//
//  MarketViewModel.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit

class MarketViewModel: UIViewController{
    // MARK: - Vars
    var menuButton: MenuButton!
    var button: UIButton!
    
    func setupView(){
        menuButton = MenuButton(frame: self.view.bounds)
        menuButton.button = self.button
        
        menuButton.setupView()
        self.view = menuButton
    }
}
