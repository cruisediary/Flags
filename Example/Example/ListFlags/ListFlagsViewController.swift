//
//  ListFlagsViewController.swift
//  Example
//
//  Created by Cruz on 04/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit
import IGListKit
import ReactorKit
import RxSwift
import SnapKit

class ListFlagsViewController: UIViewController, View {
    var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        return searchBar
    }()

    // IGListKit
    lazy var adapter: ListAdapter = {
        let adapter = ListAdapter(updater: ListAdapterUpdater(),
                              viewController: self,
                              workingRangeSize: 2)
        adapter.collectionView = collectionView
        adapter.dataSource = self
        return adapter
    }()

    var collectionView: ListCollectionView = {
        let collectionView = ListCollectionView()
        collectionView.collectionViewLayout = ListCollectionViewLayout(stickyHeaders: false,
                                                                       topContentInset: 0,
                                                                       stretchToEdge: false)
        collectionView.isPrefetchingEnabled = false
        collectionView.register(ListFlagCell.self,
                                forCellWithReuseIdentifier: ListFlagCell.identifier)
        return collectionView
    }()

    // Rx

    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.reactor = ListFlagsReactor()

        // Do any additional setup after loading the view.
        view.addSubview(searchBar)
        view.addSubview(collectionView)

        searchBar.snp.makeConstraints { maker in
            maker.leading.trailing.equalToSuperview()
            maker.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
            maker.height.equalTo(44.0)
        }

        collectionView.snp.makeConstraints { maker in
            maker.top.equalTo(searchBar.snp.bottom)
            maker.leading.trailing.equalToSuperview()
            maker.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottomMargin)
        }
    }

    func bind(reactor: ListFlagsReactor) {
        
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

extension ListFlagsViewController: ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return []
    }

    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return ListSingleSectionController(
            cellClass: ListFlagCell.self,
            configureBlock: { _, _ in
                // do nothing
            },
            sizeBlock: { _, _ -> CGSize in
                return .zero
            })
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
