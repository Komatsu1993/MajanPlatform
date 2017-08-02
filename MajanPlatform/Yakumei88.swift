//
//  Yakumei88.swift
//  MajanPlatform
//
//  Created by 小松知樹 on 2017/08/02.
//  Copyright © 2017年 Komatsu. All rights reserved.
//

import UIKit

class Yakumei88: UIViewController {

    @IBOutlet weak var churen: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let x1 = "門前役。萬子か筒子か索子で１１１２３４５６７８９９９を作り１〜９のいずれかで上がる役。（日本麻雀でいう純正九連宝燈）"
        churen.text = x1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
