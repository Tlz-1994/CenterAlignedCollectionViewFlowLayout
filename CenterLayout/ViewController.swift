//
//  ViewController.swift
//  CenterLayout
//
//  Created by stefanie on 2018/3/21.
//  Copyright © 2018年 Stefanie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
  private lazy var collectionView: UICollectionView = {
    let layout = CenterAlignedCollectionViewFlowLayout()
    let view = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)
    view.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    view.delegate = self
    view.dataSource = self
    return view
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    view.addSubview(collectionView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    cell.backgroundColor = .red
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return arc4random() % 2 == 0 ? CGSize(width: 40, height: 30): CGSize(width: 60, height: 30)
  }

}
