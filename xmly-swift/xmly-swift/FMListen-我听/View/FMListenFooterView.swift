//
//  FMListenFooterView.swift
//  xmly-swift
//
//  Created by apple on 2019/12/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

protocol FMListenFooterViewDelegate:NSObjectProtocol {
    func listenFooterAddBtnClick()
}

class FMListenFooterView: UIView {
    weak var delegate: FMListenFooterViewDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupUI() {
        self.addSubview(addButton)
        addButton.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(30)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(120)
        }
        addButton.layer.masksToBounds  = true
        addButton.layer.cornerRadius = 20
    }
    
    private var addButton:UIButton{
        let button = UIButton.init(type: .custom)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(addButtonClick), for:UIControl.Event.touchUpInside)
        return button
    }
    
    
    @objc func addButtonClick(){
        delegate?.listenFooterAddBtnClick()
    }
    
    
      var listenFooterViewTitle:String?{
        didSet {
            addButton.setTitle(listenFooterViewTitle, for: .normal)
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
