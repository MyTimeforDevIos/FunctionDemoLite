//
//  BlinkableView.swift
//  UIResponder-UIControl-UIGesture
//
//  Created by 辉 on 2020/9/18.
//

import Foundation
import UIKit
final class BlinkableView: UIView {
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    func select() {
        becomeFirstResponder()
    }

    @objc func performBlinkAction(_ ins: Int) {
        //闪烁动画
        self.backgroundColor = .orange
        self.resignFirstResponder()
        self.next?.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 在响应链里能响应的 view 的时候调用闪烁动画。调用 super 的话会在整个响应链里都执行方法，
        // 注释之后，只在第一响应者的 view 响应（becomeFirstResponder 的 view）
//        super.touchesBegan(touches, with: event)
        UIApplication.shared.sendAction(#selector(BlinkableView.performBlinkAction(_:)), to: nil, from: nil, for: nil)
    }


}
