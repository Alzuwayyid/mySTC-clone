//
//  MenuButton.swift
//  mySTCclone
//
//  Created by Mohammed on 23/01/2021.
//

import UIKit

class MenuButton: UIView{
    var button: UIButton!
    
    func setupView(){
        
        self.addSubview(button)
        button.setConstraints([
            .top(padding: 5, from: nil),
            .horizontal(padding: 5),
            .bottom(padding: 0, from: bottomAnchor)
        ])
        button.backgroundColor = .systemBlue
    }
}
