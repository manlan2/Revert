//
//  Copyright (c) 2015 Itty Bitty Apps. All rights reserved.
//

import UIKit

class CollectableCollectionViewDataSource: NSObject, UICollectionViewDataSource {
  private let collection: CollectableCollection<Item>
  private let cellConfigurator: CollectionViewCellConfigurator
  
  required init(collection: CollectableCollection<Item>, cellConfigurator: CollectionViewCellConfigurator) {
    self.collection = collection
    self.cellConfigurator = cellConfigurator

    super.init()
  }
  
  internal func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return self.collection.countOfGroups
  }
  
  internal func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.collection[section].countOfRows
  }
  
  internal func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let item = self.collection.itemAtIndexPath(indexPath)
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier(item.cellIdentifier, forIndexPath: indexPath) as! CollectionViewCell
    
    self.cellConfigurator.configureCell(cell)
    return cell
  }
}