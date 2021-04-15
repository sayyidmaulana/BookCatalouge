//
//  MainController.swift
//  TestMobileDev
//
//  Created by Sayyid Maulana Khakul Yakin on 08/04/21.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet weak var mainList: UICollectionView!
    
    let listMain = [MainModel(image: "order", title: "Genre"),
                      MainModel(image: "planner", title: "Buku"),
                      MainModel(image: "chef_woman", title: "Penulis")]
    
    lazy var titleStackView: UIStackView = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .center
        titleLabel.text = "Title"
        let subtitleLabel = UILabel()
        subtitleLabel.textAlignment = .center
        subtitleLabel.text = "Subtitle"
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        stackView.axis = .vertical
        return stackView
    }()

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        if view.traitCollection.horizontalSizeClass == .compact {
            titleStackView.axis = .vertical
            titleStackView.spacing = UIStackView.spacingUseDefault
        } else {
            titleStackView.axis = .horizontal
            titleStackView.spacing = 20.0
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.titleView = titleStackView
        
        mainList.delegate = self
        mainList.dataSource = self
        
        mainList.backgroundColor = .white

    }

}

extension MainController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listMain.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCell", for: indexPath) as! MainViewCell

        cell.homeCell = listMain[indexPath.row]
//        let data = listMain[indexPath.row]
//        cell.setupData(data: data)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 15, left: 15, bottom: 10, right: 15)
    }
    
}
