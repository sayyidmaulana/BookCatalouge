//
//  MainViewCell.swift
//  TestMobileDev
//
//  Created by Sayyid Maulana Khakul Yakin on 08/04/21.
//

import UIKit

class MainViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
    var homeCell: MainModel? {
        didSet {
            
            guard let images = homeCell?.image else { return }
            guard let titles = homeCell?.title else { return }
            
            imageView.image = UIImage(named: images)
            labelView.text = titles
        }
    }
    
    func setupData(data: MainModel) {
        self.imageView.image = UIImage(named: data.image ?? "")
        self.labelView.text = data.title
    }
    
}
