//
//  Constants.swift
//  mod15
//
//  Created by Natalia Shevaldina on 12.04.2022.
//

import UIKit

enum Constants {
  enum Colors {
    static var blackColor = UIColor.black
    static var greyColor = UIColor.gray
  }
  
  enum Fonts {
    static var headerFont: UIFont {
      UIFont.systemFont(ofSize: 16)
    }
    static var textFont: UIFont {
      UIFont.systemFont(ofSize: 14)
    }
  }
  
  enum Image {
    static let grayBlock: UIImage = UIImage(named: "GrayBlock") ?? UIImage()
  }
}

let dataWithImages: [CellModel] = [
  CellModel (image: Constants.Image.grayBlock, title: "Header 1", news: "Для реализации вёрстки программно используйте стороннюю библиотеку, которую нужно добавить.", time: "8 min ago"),
  CellModel (image: Constants.Image.grayBlock, title: "Header 2", news: "Создайте новый проект и добавьте в него стороннюю библиотеку SnapKit.", time: "4 hours ago"),
  CellModel (image: Constants.Image.grayBlock, title: "Header 3", news: "Сделайте ячейку, как на картинке.", time: "1 month ago")
]
