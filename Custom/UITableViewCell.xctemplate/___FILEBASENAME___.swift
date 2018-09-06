import UIKit
import UserInterface

class ___FILEBASENAME___: UITableViewCell {
  private var layoutConstraints = [NSLayoutConstraint?]()

  // MARK: - Initializer

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: .default, reuseIdentifier: reuseIdentifier)
    loadView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Initial load

  @objc private func loadView() {
    NSLayoutConstraint.deactivate(layoutConstraints.compactMap({ $0 }))

    self.layoutConstraints = NSLayoutConstraint.constrain()
  }
}
