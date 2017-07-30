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
    var menzenPais = [UIImage]()          // 一行に表示する牌
    var nakiPais = [[UIImage]]()          // 二行に表示する牌
    var matiPaiImage = #imageLiteral(resourceName: "defalt-white.png")                 // 待ち牌の画像
    
    @IBOutlet weak var yakumei: UILabel!
    @IBOutlet weak var goukeiten: UILabel!
    
    @IBOutlet weak var pai1: UIButton!
    @IBOutlet weak var pai2: UIButton!
    @IBOutlet weak var pai3: UIButton!
    @IBOutlet weak var pai4: UIButton!
    @IBOutlet weak var pai5: UIButton!
    @IBOutlet weak var pai6: UIButton!
    @IBOutlet weak var pai7: UIButton!
    @IBOutlet weak var pai8: UIButton!
    @IBOutlet weak var pai9: UIButton!
    @IBOutlet weak var pai10: UIButton!
    @IBOutlet weak var pai11: UIButton!
    @IBOutlet weak var pai12: UIButton!
    @IBOutlet weak var pai13: UIButton!
    @IBOutlet weak var pai14: UIButton!
    
    @IBOutlet weak var matiPai: UIButton!
    
    @IBOutlet weak var naki1_1: UIButton!
    @IBOutlet weak var naki1_2: UIButton!
    @IBOutlet weak var naki1_3: UIButton!
    @IBOutlet weak var naki1_4: UIButton!
    @IBOutlet weak var naki2_1: UIButton!
    @IBOutlet weak var naki2_2: UIButton!
    @IBOutlet weak var naki2_3: UIButton!
    @IBOutlet weak var naki2_4: UIButton!
    @IBOutlet weak var naki3_1: UIButton!
    @IBOutlet weak var naki3_2: UIButton!
    @IBOutlet weak var naki3_3: UIButton!
    @IBOutlet weak var naki3_4: UIButton!
    @IBOutlet weak var naki4_1: UIButton!
    @IBOutlet weak var naki4_2: UIButton!
    @IBOutlet weak var naki4_3: UIButton!
    @IBOutlet weak var naki4_4: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var text = ""
        for (name, point) in tenPt {
            text += "\(name)    :    \(point) \n"
        }
        yakumei.text = text
        goukeiten.text = String(pt)
        // Do any additional setup after loading the view.
        
        let menzen:[UIButton] = [pai1, pai2, pai3, pai4, pai5, pai6, pai7, pai8, pai9, pai10, pai11, pai12, pai13, pai14]
        let nakiPai:[[UIButton]] = [[naki1_1, naki1_2, naki1_3, naki1_4], [naki2_1, naki2_2, naki2_3, naki2_4], [naki3_1, naki3_2, naki3_3, naki3_4], [naki4_1, naki4_2, naki4_3, naki4_4]]
        var num = 0
        for i in menzenPais {
            menzen[num].setImage(i, for: .normal)
            num += 1
        }
        var num1 = 0
        for i in nakiPais {
            var num2 = 0
            for j in i {
                nakiPai[num1][num2].setImage(j, for: .normal)
                num2 += 1
            }
            num1 += 1
        }
        
        matiPai.setImage(matiPaiImage, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

