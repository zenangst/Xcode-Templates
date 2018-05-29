import UIKit

class ___FILEBASENAME___: NSObject, UICollectionViewDataSource {
  weak var collectionView: UICollectionView?
  private(set) var models: [<#Model#>]

  // MARK: - Initializer

  init(models: [<#Model#>] = [], collectionView: UICollectionView? = nil) {
    self.collectionView = collectionView
    self.models = models
    super.init()
    addInjection(with: #selector(injected(_:)))
  }

  // MARK: - Injection

  @objc open func injected(_ notification: Notification) {
    guard Injection.objectWasInjected(self, notification: notification) else { return }
    collectionView?.reloadData()
  }

  // MARK: - Public API

  func reload(with models: [<#Model#>]) {
    self.models = models
    collectionView?.reloadData()
  }

  func model(at indexPath: IndexPath) -> <#Model#> {
    return models[indexPath.item]
  }

  // MARK: - UICollectionViewDataSource

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return models.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return collectionView.dequeue(<#Cell#>.self, with: model(at: indexPath), for: indexPath) { view, model in

    }
  }
}
