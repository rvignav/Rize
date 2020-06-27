//
//  MenuBar.swift
//  CACApp
//
//  Created by Howard Huang on 6/26/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class MenuBar: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout
        let cv = UICollectionView(frame: .zero, CollectionViewLayout: layout)
        cv.backgroundColor = UIColor.blueColor()
        cv.datasource = self
        cv.delegate = self
        return cv
    }
    
    let cellId = "cellId"
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        collectionView.RegisterClass(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        addSubview(collectionView)
        AddConstraintsWithFormat("H:|[v0]|", views: collectionView)
        AddConstraintsWithFormat("V:|[v0]|", views: collectionView)
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
            return 4
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellId, forIndexPath: indexPath)
        cell.backgroundColor = UIColor.redColor()
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSizeMake(frame.width/4, frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
