//
//  ViewController.swift
//  mod15
//
//  Created by Natalia Shevaldina on 09.04.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
  
  let cell = "CellModel"
  
  private lazy var tableView: UITableView = {
    let tableView = UITableView(frame: CGRect.zero, style: .grouped)
    tableView.separatorStyle = .singleLine
    tableView.separatorInset = UIEdgeInsets(top: 0, left: 82, bottom: 0, right: 0)
    return tableView
  }()
                                    
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    tableView.register(Cell.self, forCellReuseIdentifier: cell)
    tableView.dataSource = self
    tableView.delegate = self
    setupViews()
    setupConstraints()
  }
  
  private func setupViews () {
    view.addSubview(tableView)
  }
  
  private func setupConstraints () {
    tableView.snp.makeConstraints { (make) in
      make.leading.trailing.top.bottom.equalToSuperview()
    }
    //tableView.rowHeight = 93
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    dataWithImages.count
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 93
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cell) as? Cell
    let viewModel = dataWithImages[indexPath.row]
    cell?.configure(viewModel)
    return cell ?? UITableViewCell()
  }
}

extension ViewController: UITableViewDelegate {}
