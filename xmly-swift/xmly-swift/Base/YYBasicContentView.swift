//
//  YYBasicContentView.swift
//  xmly-swift
//
//  Created by Mac on 2019/9/27.
//  Copyright © 2019 Mac. All rights reserved.
//



class YYBasicContentView: ESTabBarItemContentView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = UIColor.init(white: 175/255, alpha: 1)
        highlightTextColor = UIColor.init(red: 254/255.0, green: 73/255.0, blue: 42/255.0, alpha: 1.0)
        iconColor = UIColor.init(white: 175.0 / 255.0, alpha: 1.0)
        highlightIconColor = UIColor.init(red: 254/255.0, green: 73/255.0, blue: 42/255.0, alpha: 1.0)

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")

    }
}



