//
//  shapeImageView.swift
//  uiPathPicPractice
//
//  Created by 林祐辰 on 2020/4/6.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class shapeImageView: UIImageView {

 override func layoutSubviews() {
       super.layoutSubviews()
       let customPath = UIBezierPath()
       customPath.move(to: CGPoint(x: 0, y: bounds.height*0.2))
       customPath.addLine(to: CGPoint(x: bounds.width, y: bounds.height*0.1))
       customPath.addLine(to: CGPoint(x: bounds.width, y: bounds.height*0.8))
       customPath.addLine(to: CGPoint(x: 0, y: bounds.height * 0.9))
       customPath.close()
       let shapeLayer = CAShapeLayer()
       shapeLayer.path = customPath.cgPath
       layer.mask = shapeLayer
    }

}
