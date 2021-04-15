//
//  URL.swift
//  TestMobileDev
//
//  Created by Sayyid Maulana Khakul Yakin on 29/03/21.
//

let SERVER = "https://cabaca.id:8443/api/v2/"
let headerKey = "x-dreamfactory-api-key"
let headerValue = "25e0bf00ab2fa7f03a9fa57035139e47ccb28c20658f6de907b8011347e369fb"

let genre = SERVER + "cabaca/_table/genre"

let book = SERVER + "book/uptodate?limit=10"

let author = SERVER + "writer/popular?limit=10"

let detalGenre = "book/category?id="

let detailBook = "book/detail/"

let detailAuthor = "writer/detail/"

let urlImage = SERVER + "files/covers/"

let urlImageProfil = SERVER + "files/"

let urlImageKey = "&api_key=32ded42cfffb77dee86a29f43d36a3641849d4b5904aade9a79e9aa6cd5b5948"

func filterGenre(genre_id: String) -> String {
    return SERVER + detalGenre + genre_id
}

func filterBook(book_id: String) -> String {
    return SERVER + detailBook + book_id
}

func filterAuthor(user_id: String) -> String {
    return SERVER + detailAuthor + user_id
}
