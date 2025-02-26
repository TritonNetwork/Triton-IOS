import UIKit
import FlexLayout

final class PinCodeIndicatorView: BaseView {
    let rootFlexContainer: UIView
    let innerCircleView: UIView
    
    required init() {
        rootFlexContainer = UIView()
        innerCircleView = UIView()
        super.init()
    }
    
    override func configureView() {
        super.configureView()
        innerCircleView.layer.cornerRadius = 5
        addSubview(rootFlexContainer)
        addSubview(innerCircleView)
        backgroundColor = Theme.current.pin.background
        layer.cornerRadius = 12
        
    }
    
    override func configureConstraints() {
        rootFlexContainer.flex.justifyContent(.center).alignItems(.center).height(100%).width(100%).addItem(innerCircleView).width(10).height(10)
    }
    
    func fill() {
        innerCircleView.backgroundColor = Theme.current.pin.value
    }
    
    func clear() {
        innerCircleView.backgroundColor = .clear
    }
}
