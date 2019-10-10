//
//  HomeRecommendController.swift
//  xmly-swift
//
//  Created by Mac on 2019/10/8.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import SwiftyJSON
import HandyJSON
import SwiftMessages

class HomeRecommendController: UIViewController {
    let otherMessages = SwiftMessages()
    private var recommnedAdvertList:[RecommnedAdvertModel]?
    private let FMRecommendHeaderViewID = "FMRecommendHeaderView"
    private let FMRecommendFooterViewID     = "FMRecommendFooterView"
    
    private let FMRecommendHeaderCellID     = "FMRecommendHeaderCell"
    private let FMRecommendGuessLikeCellID  = "FMRecommendGuessLikeCell"
    private let FMHotAudiobookCellID        = "FMHotAudiobookCell"
    private let FMAdvertCellID              = "FMAdvertCell"
    private let FMOneKeyListenCellID        = "FMOneKeyListenCell"
    private let FMRecommendForYouCellID     = "FMRecommendForYouCell"
    private let HomeRecommendLiveCellID     = "HomeRecommendLiveCell"

    lazy var collectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout.init()
        let collection = UICollectionView.init(frame: .zero)
        collection.delegate = self as? UICollectionViewDelegate
        collection.dataSource = self as! UICollectionViewDataSource
//        collection.register(FMRecommendHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: FMRecommendHeaderCellID)
        return collection

    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

//extension HomeRecommendController:UICollectionViewDelegate,UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//    }
//}
