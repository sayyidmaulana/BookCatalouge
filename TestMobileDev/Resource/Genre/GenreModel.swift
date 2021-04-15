//
//  GenreModel.swift
//  TestMobileDev
//
//  Created by Sayyid Maulana Khakul Yakin on 15/04/21.
//

import Foundation

struct GenreModel: Decodable {
    let resource: [ResourceBean]
    
    struct ResourceBean: Decodable {
        let id: Int?
        let title: String?
        let iconUrl: String?
        private enum CodingKeys: String, CodingKey {
            case id
            case title
            case iconUrl = "icon_url"
        }
    }

}
