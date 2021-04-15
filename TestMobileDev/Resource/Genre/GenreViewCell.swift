//
//  GenreViewCell.swift
//  TestMobileDev
//
//  Created by Sayyid Maulana Khakul Yakin on 15/04/21.
//

import UIKit

class GenreViewCell: UICollectionViewCell {

    @IBOutlet weak var labelGenre: UILabel!
    
    func setupData(data: GenreModel.ResourceBean) {
        self.labelGenre.text = data.title
    }

}
