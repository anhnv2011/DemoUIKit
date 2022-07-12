//
//  CustomView.swift
//  DemoDrawing
//
//  Created by MAC on 7/11/22.
//

import UIKit

class CustomBrickView: UIView {

    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .red
        //setUpLabel()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        creatBrick()
        setUpLabel()
    }

    func creatBrick(){
        let L = bounds.width
        let r:CGFloat = 30
        //top layer
        let topLayer = CAShapeLayer()
        let topPath = UIBezierPath()
        
        //chon diem bat dau
        topPath.move(to: CGPoint(x: 0, y: 0))
        //điểm tiếp theo
        topPath.addLine(to: CGPoint(x: r, y: r))
        topPath.addLine(to: CGPoint(x: L-r, y: r))
        topPath.addLine(to: CGPoint(x: L, y: 0))
        
        topLayer.path = topPath.cgPath
        //set màu cho khối
        topLayer.fillColor = UIColor.white.cgColor
        
        topLayer.opacity = 0.5 //độ đậm nhạt
        
        layer.addSublayer(topLayer)
        
        //right layer
        let rightLayer = CAShapeLayer()
        let rightPath = UIBezierPath()
        
        //chon diem bat dau
        rightPath.move(to: CGPoint(x: L, y: 0))
        //điểm tiếp theo
        rightPath.addLine(to: CGPoint(x: L-r, y: r))
        rightPath.addLine(to: CGPoint(x: L-r, y: L-r))
        rightPath.addLine(to: CGPoint(x: L, y: L))
        
        rightLayer.path = rightPath.cgPath
        //set màu cho khối
        rightLayer.fillColor = UIColor.white.cgColor
        
        rightLayer.opacity = 0.8 //độ đậm nhạt
        
        layer.addSublayer(rightLayer)
        
        //left
        let leftLayer = CAShapeLayer()
        let leftPath = UIBezierPath()
        
        //chon diem bat dau
        leftPath.move(to: CGPoint(x: 0, y: 0))
        //điểm tiếp theo
        leftPath.addLine(to: CGPoint(x: r, y: r))
        leftPath.addLine(to: CGPoint(x: r, y: L-r))
        leftPath.addLine(to: CGPoint(x: 0, y: L))
        
        leftLayer.path = leftPath.cgPath
        //set màu cho khối
        leftLayer.fillColor = UIColor.white.cgColor
        
        leftLayer.opacity = 0.8 //độ đậm nhạt
        
        layer.addSublayer(leftLayer)
        
        //bottom
        let bottomLayer = CAShapeLayer()
        let bottomPath = UIBezierPath()
        
        //chon diem bat dau
        bottomPath.move(to: CGPoint(x: 0, y: L))
        //điểm tiếp theo
        bottomPath.addLine(to: CGPoint(x: L, y: L))
        bottomPath.addLine(to: CGPoint(x: L-r, y: L-r))
        bottomPath.addLine(to: CGPoint(x: r, y: L-r))
        
        bottomLayer.path = bottomPath.cgPath
        //set màu cho khối
        bottomLayer.fillColor = UIColor.white.cgColor
        
        bottomLayer.opacity = 0.4 //độ đậm nhạt
        layer.addSublayer(bottomLayer)
    }
    func setUpLabel (){
        let label = UILabel(frame: self.bounds)
        label.text = "square"
        label.textColor = .white
        label.textAlignment = .center
        label.backgroundColor = .clear
        label.font = .systemFont(ofSize: 30, weight: .medium)
        self.addSubview(label)    }
    
 
}
