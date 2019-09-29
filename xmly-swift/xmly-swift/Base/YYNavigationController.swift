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

        // Do any additional setup after loading the view.
    }
    
    func setNavAppearence() {
        WRNavigationBar.wr_setDefaultNavBarBarTintColor(UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1))
        
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
