import UIKit

class ___FILEBASENAME___: NSObject, UITableViewDataSource {
  weak var tableView: UITableView?
  private(set) var models: [<#Model#>]

  // MARK: - Initializer

  init(tableView: UITableView? = nil, models: [<#Model#>] = []) {
    self.tableView = tableView
    self.models = models
    super.init()
    addInjection(with: #selector(injected(_:)))
  }

  // MARK: - Injection

  @objc open func injected(_ notification: Notification) {
    guard Injection.objectWasInjected(self, notification: notification) else { return }
    tableView?.reloadData()
  }

  // MARK: - Public API

  func reload(with items: [<#Model#>]) {
    self.models = models
    tableView?.reloadData()
  }

  func model(at indexPath: IndexPath) -> <#Model#> {
    return models[indexPath.item]
  }

  // MARK: - UITableViewDataSource

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return models.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return tableView.dequeue(<#Cell#>.self, with: model(at: indexPath), for: indexPath) { view, model in

    }
  }
}
