//
//  ListenSubscibeCell.swift
//  xmly-swift
//
//  Created by apple on 2019/12/26.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ListenSubscibeCell: UITableViewCell {
    private var picView:UIImageView = {
       let v = UIImageView()
        v.layer.cornerRadius = 3
        v.layer.masksToBounds = true
        return v
    }()
    
    private var titleLabel :UILabel = {
        let v = UILabel()
        v.font = UIFont.systemFont(ofSize: 18)
        return v
    }()
    
    private var subLabel :UILabel = {
        let v = UILabel()
        v.font = UIFont.systemFont(ofSize: 15)
        return v
    }()
}
