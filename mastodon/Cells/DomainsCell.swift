//
//  DomainsCell.swift
//  mastodon
//
//  Created by Shihab Mehboob on 21/06/2019.
//  Copyright © 2019 Shihab Mehboob. All rights reserved.
//

import Foundation
import UIKit
import PINRemoteImage

class DomainsCell: SwipeTableViewCell {
    
    var userName = UILabel()
    var toot = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //        userName.adjustsFontForContentSizeCategory = true
        //        toot.adjustsFontForContentSizeCategory = true
        
        userName.translatesAutoresizingMaskIntoConstraints = false
        toot.translatesAutoresizingMaskIntoConstraints = false
        
        userName.numberOfLines = 0
        toot.numberOfLines = 0
        
        userName.textColor = Colours.black
        toot.textColor = Colours.grayDark.withAlphaComponent(0.38)
        
        userName.font = UIFont.systemFont(ofSize: Colours.fontSize1, weight: .heavy)
        toot.font = UIFont.systemFont(ofSize: Colours.fontSize3)
        
        contentView.addSubview(userName)
        contentView.addSubview(toot)
        
        let viewsDict = [
            "name" : userName,
            "episodes" : toot,
        ]
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[name]-(>=15)-|", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[episodes]-15-|", options: [], metrics: nil, views: viewsDict))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-18-[name]-1-[episodes]-18-|", options: [], metrics: nil, views: viewsDict))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(_ status: String) {
        userName.text = status
        toot.text = "Blocked across the app"
        
        userName.font = UIFont.systemFont(ofSize: Colours.fontSize1, weight: .heavy)
        toot.font = UIFont.systemFont(ofSize: Colours.fontSize3)
        
    }
    
}


