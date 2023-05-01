//
//  SearchResultCell.swift
//  AppStoreJSONApi
//
//  Created by mete on 1.05.2023.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
