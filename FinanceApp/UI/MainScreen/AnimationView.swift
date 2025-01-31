//
//  AnimationView.swift
//  FinanceApp
//
//  Created by Semyon Ishkhanyan on 17.02.2025.
//

import SwiftUI

struct AnimationView: UIViewRepresentable {
    
    let item1 = UIView()
    let item2 = UIView()
    
    func makeUIView(context: Context) -> UIView {
        let uiView = UIView()
        uiView.backgroundColor = .systemBlue
        item1.backgroundColor = .cyan
        item2.backgroundColor = .green
        uiView.addSubview(item1)
        uiView.addSubview(item2)
        
        item1.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        item2.frame = CGRect(x: 100, y: 0, width: 100, height: 200)
        
        addAnimation()
        
        return uiView
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    func addAnimation() {
        let animation1 = CABasicAnimation(keyPath: "bounds.size.height")
        animation1.fromValue = item1.frame.height
        animation1.toValue = 0
        animation1.duration = 1
        animation1.autoreverses = true
        animation1.repeatCount = .infinity
        item1.layer.add(animation1, forKey: "height")
        
        let animation2 = CABasicAnimation(keyPath: "bounds.size.height")
        animation2.fromValue = 0
        animation2.toValue = item2.frame.height
        animation2.duration = 1
        animation2.autoreverses = true
        animation2.repeatCount = .infinity
        item2.layer.add(animation2, forKey: "height")
    }
    
    typealias UIViewType = UIView
}

#Preview {
    AnimationView()
}
