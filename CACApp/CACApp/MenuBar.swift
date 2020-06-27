//
//  MenuBar.swift
//  CACApp
//
//  Created by Howard Huang on 6/26/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class MenuBar: UIView {
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout
        let cv = UICollectionView(frame: .zero, CollectionViewLayout: layout)
        cv.backgroundColor = UIColor.blueColor()
        return cv
    }
    override init(frame: CGRect){
        super.init(frame: frame)
        
        addSubview(collectionView)
        AddConstraintsWithFormat("H:|[v0]|", views: collectionView)
        AddConstraintsWithFormat("V:|[v0]|", views: collectionView)
        
    }
}
