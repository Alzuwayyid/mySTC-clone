//
//  MarketController.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit

class MarketController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    
    func setupView(){
        let buttonView = MarketView(frame: self.view.bounds)
        view.addSubview(buttonView)
        buttonView.backgroundColor = .systemRed
        let marketViewModel = MarketViewModel()
        self.addChild(marketViewModel)
        
        buttonView.menuButton = marketViewModel.view
        buttonView.setupView()
    }
}
