//
//  ListenSubscibeControllerViewController.swift
//  xmly-swift
//
//  Created by apple on 2019/12/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import LTScrollView
class ListenSubscibeControllerViewController: UIViewController,LTTableViewProtocal {

    private lazy var footerView:FMListenFooterView = {
      let view =     FMListenFooterView.init(frame: CGRect(x:0, y:0, width:YYScreenWidth, height:100))
        view.listenFooterViewTitle = "➕添加订阅"
        return view
    }()
    
    private let ListenSubscibeCellID = "ListenSubscibeCellID"
    private lazy var tableview:UITableView = {
        let tableView = tableViewConfig(CGRect(x: 0, y: 0, width:YYScreenWidth, height: YYScreenHeigth-64), self, self, nil)

        let tableview = UITableView.init(frame: CGRect(x: 0, y: 0, width:YYScreenWidth, height: YYScreenHeigth-64))
        tableview.delegate = self
        return tableview
    }()
    
    lazy var viewModel: ListenSubscibeViewModel = {
        return ListenSubscibeViewModel()
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

extension ListenSubscibeControllerViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
