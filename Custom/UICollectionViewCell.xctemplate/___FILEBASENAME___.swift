import UIKit
import Vaccine

class ___FILEBASENAME___: UICollectionViewCell {
  private var layoutConstraints = [NSLayoutConstraint?]()

  // MARK: - Initializer

  override init(frame: CGRect) {
    super.init(frame: frame)
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
