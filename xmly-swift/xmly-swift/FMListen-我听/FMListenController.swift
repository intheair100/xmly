//
//  FMListenController.swift
//  xmly-swift
//
//  Created by Mac on 2019/10/12.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class FMListenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    lazy var rightBarButton: UIButton = {
        let button = UIButton.init(type:UIButton.ButtonType.custom)
        button.frame = CGRect(x:0, y:0, width:30, height: 30)
        button.setImage(UIImage.init(named: "搜索"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(rightBarButtonClick), for: UIControl.Event.touchUpInside)
        return button
    }()

    lazy var leftBarButton: UIButton = {
        let button = UIButton.init(type:.custom)
        button.frame = CGRect(x:0, y:0, width:30, height: 30)
        button.setImage(UIImage.init(named: "msg"), for: .normal)
        button.addTarget(self, action: #selector(leftBarButtonClick), for: .touchUpInside)
        return button
    }()
    
    //Mark: - 导航栏左边消息点击事件
    @objc func rightBarButtonClick() {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
