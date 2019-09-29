//
//  YYNavigationController.swift
//  xmly-swift
//
//  Created by Mac on 2019/9/27.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import WRNavigationBar
class YYNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavAppearence()
        // Do any additional setup after loading the view.
    }
    
    func setNavAppearence() {
        WRNavigationBar.wr_setDefaultNavBarBarTintColor(UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1))
        WRNavigationBar.wr_setDefaultNavBarTintColor(DominantColor)
        WRNavigationBar.wr_setDefaultNavBarTitleColor(.black)
        WRNavigationBar.wr_setDefaultNavBarShadowImageHidden(true)
        
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

extension YYNavigationController{
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count  > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
}
