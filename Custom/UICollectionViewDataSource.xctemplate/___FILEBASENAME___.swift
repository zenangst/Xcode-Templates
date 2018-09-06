import UIKit
import UserInterface

class ___FILEBASENAME___: NSObject, UICollectionViewDataSource {
  weak var collectionView: UICollectionView?
  private(set) var models: [<#Model#>]

  // MARK: - Initializer

  init(models: [<#Model#>] = []) {
    self.models = models
    super.init()
  }

  // MARK: - Public API

  func reload(with models: [<#Model#>],
              then handler: (() -> Void)? = nil) {
    self.models = models
    collectionView?.reloadData()
    handler?()
  }

  func model(at indexPath: IndexPath) -> <#Model#> {
    return models[indexPath.item]
  }

  // MARK: - UICollectionViewDataSource

  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return models.count
  }

  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return collectionView.dequeue(<#Cell#>.self, with: model(at: indexPath), for: indexPath) {
      view, model in

    }
  }
}
