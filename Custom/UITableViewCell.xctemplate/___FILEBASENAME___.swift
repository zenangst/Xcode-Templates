import UIKit
import Vaccine

class ___FILEBASENAME___: UITableViewCell {
  private var layoutConstraints = [NSLayoutConstraint?]()

  // MARK: - Initializer

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: .default, reuseIdentifier: reuseIdentifier)
    addInjection(with: #selector(injected(_:)))
    loadView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Initial load

  private func loadView() {
    NSLayoutConstraint.deactivate(layoutConstraints.compactMap({ $0 }))
  }

  // MARK: - Injection

  @objc open func injected(_ notification: Notification) {
    loadView()
  }
}
