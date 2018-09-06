import UIKit

class ___FILEBASENAME___: UICollectionViewCell {
  private var layoutConstraints = [NSLayoutConstraint?]()

  // MARK: - Initializer

  override init(frame: CGRect) {
    super.init(frame: frame)
    loadView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Initial load

  private func loadView() {
    NSLayoutConstraint.deactivate(layoutConstraints.compactMap({ $0 }))
    // Your code goes here.
    self.layoutConstraints = NSLayoutConstraint.constrain()
  }
}
