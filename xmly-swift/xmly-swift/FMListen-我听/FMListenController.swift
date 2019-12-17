//
//  FMListenController.swift
//  xmly-swift
//
//  Created by Mac on 2019/10/12.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import LTScrollView

class FMListenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: leftBarButton)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: rightBarButton)
        
        // Do any additional setup after loading the view.
    }
    
    lazy var headerView: FMListenHeaderView = {
        let view = FMListenHeaderView.init(frame: CGRect(x:0, y:0, width:YYScreenWidth, height:120))
        return view
    }()
    
    
    
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
    
    @objc func leftBarButtonClick() {
        
    }

    //Mark: - 导航栏左边消息点击事件
    @objc func rightBarButtonClick() {
        
    }
    
    lazy var viewControllers: [UIViewController] = {
        let viewControlls = [UIViewController(),UIViewController()]
        return viewControlls
    }()
    
    private lazy var titles: [String] = {
        return ["订阅", "一键听", "推荐"]
    }()
    
    private lazy var layout: LTLayout = {
        let layout = LTLayout()
        layout.isAverage = true
        layout.sliderWidth = 80
        layout.titleViewBgColor = UIColor.white
        layout.titleColor = UIColor(r: 178, g: 178, b: 178)
        layout.titleSelectColor = UIColor(r: 16, g: 16, b: 16)
        layout.bottomLineColor = UIColor.red
        layout.sliderHeight = 56
        /* 更多属性设置请参考 LTLayout 中 public 属性说明 */
        return layout
    }()
    
    private lazy var advancedManager: LTAdvancedManager = {
        let statusBarH = UIApplication.shared.statusBarFrame.size.height
        let advancedManager = LTAdvancedManager(frame: CGRect(x: 0, y: navigationBarHeight, width: YYScreenWidth, height: YYScreenHeigth-navigationBarHeight), viewControllers: viewControllers, titles: titles, currentViewController: self, layout: layout, headerViewHandle: {[weak self] in
            guard let strongSelf = self else { return UIView() }
            let headerView = strongSelf.headerView
            return headerView
        })
        /* 设置代理 监听滚动 */
        advancedManager.delegate = self as! LTAdvancedScrollViewDelegate
        /* 设置悬停位置 */
        //        advancedManager.hoverY = -navigationBarHeight
        /* 点击切换滚动过程动画 */
        //        advancedManager.isClickScrollAnimation = true
        /* 代码设置滚动到第几个位置 */
        //        advancedManager.scrollToIndex(index: viewControllers.count - 1)
        return advancedManager
    }()

}

extension FMListenController:LTAdvancedScrollViewDelegate{
    private func advancedManagerConfig() {
        //MARK: 选中事件
        
        advancedManager.advancedDidSelectIndexHandle = {
            print("选中了 -> \($0)")
        }
    }
    
    func glt_scrollViewOffsetY(_ offsetY: CGFloat) {
        //        print("offset --> ", offsetY)
    }
    
}
