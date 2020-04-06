//
//  starPath.swift
//  uiPathPicPractice
//
//  Created by 林祐辰 on 2020/4/6.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class starPath: UIImageView {
    override func layoutSubviews() {
    super.layoutSubviews()
    let realStarPath = UIBezierPath()
         
   var starPoints : [CGPoint] = [CGPoint(x: 244, y: 120),CGPoint(x: 332, y: 139),CGPoint(x: 268, y: 217),CGPoint(x: 280, y: 326),CGPoint(x: 192, y: 282),CGPoint(x: 100, y: 326),CGPoint(x: 111, y: 221),CGPoint(x: 38, y: 143),CGPoint(x: 138, y: 121),CGPoint(x: 192, y: 27)]
        
    realStarPath.move(to: starPoints[0])
        for num in 1...9{
            realStarPath.addLine(to: starPoints[num])
        }
    realStarPath.close()
    
    let starLayer = CAShapeLayer()
    starLayer.path = realStarPath.cgPath;
    layer.mask = starLayer
    }
}
