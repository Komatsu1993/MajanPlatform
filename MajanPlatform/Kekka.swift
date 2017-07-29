//
//  Kekka.swift
//  MajanPlatform
//
//  Created by 小松知樹 on 2017/07/29.
//  Copyright © 2017年 Komatsu. All rights reserved.
//

import UIKit

class Kekka: UIViewController {
    
    // 前の画面から引き継ぐ変数
    var tenPt = [String: Int]()   // 役の数値
    var pt = 0          // 点数
    
    @IBOutlet weak var yakumei: UILabel!
    @IBOutlet weak var goukeiten: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var text = ""
        for (name, point) in tenPt {
            text += "\(name)    :    \(point) \n"
        }
        yakumei.text = text
        goukeiten.text = String(pt)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

