//
//  UIResponderView.swift
//  UIResponder-UIControl-UIGesture
//
//  Created by 辉 on 2020/9/18.
//

import Foundation
import UIKit

class UIResponderView: UIViewController {
    
    var back1 = BlinkableView()
    var back2 = BlinkableView()
    var back3 = BlinkableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        viewLayout()
    }
    
    func viewLayout() {
        back1.backgroundColor = .green
        back1.frame = CGRect(x: 20, y: 100, width: 200, height: 300)
        self.view.addSubview(back1)
        
        

        back2.backgroundColor = .red
        back2.frame = CGRect(x: 20, y: 50, width: 100, height: 100)
        back1.addSubview(back2)
        

        back3.backgroundColor = .yellow
        back3.frame = CGRect(x: 20, y: 50, width: 50, height: 50)
        back2.addSubview(back3)
        back3.select()
        
        let button = UIButton(frame: CGRect(x: 300, y: 150, width: 50, height: 50))
        button.setTitle("rest", for: .normal)
        button.addTarget(self, action: #selector(reset), for: .touchUpInside)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        self.view.addSubview(button)
        
        let other = UIView(frame: CGRect(x: 300, y: 300, width: 50, height: 50))
        other.backgroundColor = .systemPink
        self.view.addSubview(other)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(gestureTap))
        other.addGestureRecognizer(tap)
        other.isUserInteractionEnabled = true
    }
    
    @objc func reset() {
        back1.backgroundColor = .green
        back2.backgroundColor = .red
        back3.backgroundColor = .yellow
        
        back1.select()
    }
    
    @objc func gestureTap() {
        print("otherview tap ")
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        UIApplication.shared.sendAction(#selector(BlinkableView.performBlinkAction), to: nil, from: nil, for: nil)
//    }
}
