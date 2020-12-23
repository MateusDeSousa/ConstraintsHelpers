import UIKit

public extension UIView {
    
    func enableAutoLayout() {
        let enable = translatesAutoresizingMaskIntoConstraints
        if enable {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }

    func centerX(equalTo: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        centerXAnchor.constraint(equalTo: equalTo, constant: constant).isActive = true
    }

    func centerY(equalTo: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        centerYAnchor.constraint(equalTo: equalTo, constant: constant).isActive = true
    }

    func centerY(lessThanOrEqualTo: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        centerYAnchor.constraint(lessThanOrEqualTo: lessThanOrEqualTo, constant: constant).isActive = true
    }

    func top(equalTo: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        topAnchor.constraint(equalTo: equalTo, constant: constant).isActive = true
    }

    func top(lessThanOrEqualTo: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        topAnchor.constraint(lessThanOrEqualTo: lessThanOrEqualTo, constant: constant).isActive = true
    }

    func top(greaterThanOrEqualTo: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        topAnchor.constraint(greaterThanOrEqualTo: greaterThanOrEqualTo, constant: constant).isActive = true
    }

    func bottom(equalTo: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        bottomAnchor.constraint(equalTo: equalTo, constant: constant).isActive = true
    }

    func bottom(lessThanOrEqualTo: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        bottomAnchor.constraint(lessThanOrEqualTo: lessThanOrEqualTo, constant: constant).isActive = true
    }

    func bottom(greaterThanOrEqualTo: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        self.bottomAnchor.constraint(greaterThanOrEqualTo: greaterThanOrEqualTo, constant: constant).isActive = true
    }

    func leading(equalTo: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        leadingAnchor.constraint(equalTo: equalTo, constant: constant).isActive = true
    }

    func leading(lessThanOrEqualTo: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        leadingAnchor.constraint(lessThanOrEqualTo: lessThanOrEqualTo, constant: constant).isActive = true
    }

    func leading(greaterThanOrEqualTo: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        leadingAnchor.constraint(greaterThanOrEqualTo: greaterThanOrEqualTo, constant: constant).isActive = true
    }

    func trailing(equalTo: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        trailingAnchor.constraint(equalTo: equalTo, constant: constant).isActive = true
    }

    func trailing(lessThanOrEqualTo: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        trailingAnchor.constraint(lessThanOrEqualTo: lessThanOrEqualTo, constant: constant).isActive = true
    }

    func trailing(greaterThanOrEqualTo: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
        enableAutoLayout()
        trailingAnchor.constraint(greaterThanOrEqualTo: greaterThanOrEqualTo, constant: constant).isActive = true
    }

    func height(equalToConstant: CGFloat) {
        enableAutoLayout()
        heightAnchor.constraint(equalToConstant: equalToConstant).isActive = true
    }

    func height(greaterThanOrEqualToConstant: CGFloat) {
        enableAutoLayout()
        self.heightAnchor.constraint(greaterThanOrEqualToConstant: greaterThanOrEqualToConstant).isActive = true
    }

    func height(lessThanOrEqualToConstant: CGFloat) {
        enableAutoLayout()
        heightAnchor.constraint(lessThanOrEqualToConstant: lessThanOrEqualToConstant).isActive = true
    }

    func height(equalTo: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat = 0) {
        enableAutoLayout()
        heightAnchor.constraint(equalTo: equalTo, constant: constant).isActive = true
    }

    func height(equalTo: NSLayoutDimension, multiplier: CGFloat = 0) {
        enableAutoLayout()
        heightAnchor.constraint(equalTo: equalTo, multiplier: multiplier).isActive = true
    }

    func width(equalToConstant: CGFloat) {
        enableAutoLayout()
        widthAnchor.constraint(equalToConstant: equalToConstant).isActive = true
    }

    func width(equalTo: NSLayoutAnchor<NSLayoutDimension>, constant: CGFloat = 0) {
        enableAutoLayout()
        widthAnchor.constraint(equalTo: equalTo, constant: constant).isActive = true
    }

    func width(equalTo: NSLayoutDimension, multiplier: CGFloat) {
        enableAutoLayout()
        widthAnchor.constraint(equalTo: equalTo, multiplier: multiplier).isActive = true
    }

    func width(greaterThanOrEqualToConstant: CGFloat) {
        enableAutoLayout()
        widthAnchor.constraint(greaterThanOrEqualToConstant: greaterThanOrEqualToConstant).isActive = true
    }

    func width(lessThanOrEqualToConstant: CGFloat) {
        enableAutoLayout()
        widthAnchor.constraint(lessThanOrEqualToConstant: lessThanOrEqualToConstant).isActive = true
    }

    func anchorsEquals(to view: UIView) {
        enableAutoLayout()
        leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    func edges(to view: UIView, top: CGFloat=0, left: CGFloat=0, bottom: CGFloat=0, right: CGFloat=0) {
        enableAutoLayout()
        NSLayoutConstraint.activate([
            leftAnchor.constraint(equalTo: view.leftAnchor, constant: left),
            rightAnchor.constraint(equalTo: view.rightAnchor, constant: right),
            topAnchor.constraint(equalTo: view.topAnchor, constant: top),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottom)
        ])
    }

    func viewCenter(usePresentationLayerIfPossible: Bool) -> CGPoint {
        if usePresentationLayerIfPossible, let presentationLayer = layer.presentation() {
            return presentationLayer.position
        }
        return center
    }
}
