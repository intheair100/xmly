//
//  FMListenFooterView.swift
//  xmly-swift
//
//  Created by apple on 2019/12/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit


class FMListenFooterView: UIView {
    
    private var addButton:UIView{
        let button = UIButton.init(type: .custom)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = .white
        return button
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
