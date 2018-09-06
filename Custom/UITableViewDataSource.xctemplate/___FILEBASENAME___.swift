import UIKit

class ___FILEBASENAME___: NSObject, UITableViewDataSource {
  weak var tableView: UITableView?
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
    tableView?.reloadData()
    handler?()
  }

  func model(at indexPath: IndexPath) -> <#Model#> {
    return models[indexPath.item]
  }

  // MARK: - UITableViewDataSource

  func tableView(_ tableView: UITableView,
                 numberOfRowsInSection section: Int) -> Int {
    self.tableView = tableView
    return models.count
  }

  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return tableView.dequeue(<#Cell#>.self, with: model(at: indexPath), for: indexPath) {
      view, model in

    }
  }
}
