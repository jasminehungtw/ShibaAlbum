//
//  ViewController.swift
//  ShibaAlbum
//
//  Created by Jasmine Hung on 2018/12/5.
//  Copyright © 2018年 Jasmine Hung. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //建立並設定雪花
        let snowFlakeEmitterCell = CAEmitterCell()
        snowFlakeEmitterCell.contents = UIImage(named: "snowFlake")?.cgImage    //指定雪花圖案
        snowFlakeEmitterCell.birthRate = 8                  //每秒產生8朵雪花
        snowFlakeEmitterCell.lifetime = 60                  //每朵雪花的生命週期60秒
        snowFlakeEmitterCell.velocity = 20                  //雪花基凖移動速度20
        snowFlakeEmitterCell.velocityRange = 200            //雪花移動的速度變化(20-200 ~ 20+200)
        snowFlakeEmitterCell.emissionRange = (45 * .pi/180) //向左右45度發射
        snowFlakeEmitterCell.scale = 0.1                    //雪花的基準大小(圖片的0.1倍)
        snowFlakeEmitterCell.scaleRange = 0.3               //雪花的大小變化(0.1-0.3 ~ 0.1+0.3)
        snowFlakeEmitterCell.spin = 0.5                     //雪花基準旋轉速度
        snowFlakeEmitterCell.spinRange = 1                  //雪花旋轉速度變化(0.5-1 ~ 0.5+1)
        
        //建立圖層
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 0)  //發射點位置
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line             //圖層形狀
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 2)  //圖層大小
        
        //指定圖層內容是雪花
        emitterLayer.emitterCells = [snowFlakeEmitterCell]
        
        //顯示圖層
        view.layer.addSublayer(emitterLayer)
 
    }

}

