//
//  Cell.swift
//  mod15
//
//  Created by Natalia Shevaldina on 12.04.2022.
//

import UIKit
import SnapKit

class Cell: UITableViewCell {
  
  private lazy var image: UIImageView = {
    let image = UIImageView()
    return image
  }()
  
  private lazy var title: UILabel = {
    let label = UILabel()
    label.font = Constants.Fonts.headerFont
    label.textColor = Constants.Colors.blackColor
    return label
  }()
  
  private lazy var news: UILabel = {
    let label = UILabel()
    label.font = Constants.Fonts.textFont
    label.textColor = Constants.Colors.blackColor
    label.numberOfLines = 2
    return label
  }()
  
  private lazy var time: UILabel = {
    let label = UILabel()
    label.font = Constants.Fonts.textFont
    label.textColor = Constants.Colors.greyColor
    return label
  }()
  
  private lazy var stackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.alignment = .center
    stackView.addSubview(image)
    stackView.addSubview(title)
    stackView.addSubview(time)
    stackView.addSubview(news)
    return stackView
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    contentView.addSubview(stackView)
    setupConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("error")
  }
  
  func configure(_ viewModel: CellModel) {
    image.image = viewModel.image
    title.text = viewModel.title
    time.text = viewModel.time
    news.text = viewModel.news
  }
  
  private func setupConstraints() {

    image.snp.makeConstraints { make in
      make.height.width.equalTo(50)
      make.top.equalTo(contentView.snp.top).offset(16)
      make.leading.equalTo(contentView.snp.leading).offset(16)
    }
    
    time.snp.makeConstraints { make in
      make.trailing.equalTo(contentView.snp.trailing).inset(16)
      make.top.equalTo(contentView.snp.top).offset(16)
    }
    
    news.snp.makeConstraints { make in
      make.top.equalTo(title.snp.bottom).offset(8)
      make.leading.equalTo(image.snp.trailing).offset(16)
      make.trailing.equalTo(contentView.snp.trailing).inset(16)
    }
    
    title.snp.makeConstraints { make in
      make.leading.equalTo(image.snp.trailing).offset(16)
      make.top.equalTo(contentView.snp.top).offset(16)
    }
  }

}
