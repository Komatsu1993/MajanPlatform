//
//  YakuallTop.swift
//  MajanPlatform
//
//  Created by 小松知樹 on 2017/08/02.
//  Copyright © 2017年 Komatsu. All rights reserved.
//

import UIKit

class YakuallTop: UIViewController {

    @IBOutlet weak var Setumei1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let ex1 = "当アプリで採用している役の一覧です。\n \n"
        let ex2 = "中国麻雀は８点縛りのため、手牌の合計点数が８点以上になる必要があります \n"
        let ex3 = "また日本麻雀における喰い下がりの概念もありません。 \n"
        let ex4 = "例えば、平和や一盃口も鳴いても成立します。\n"
        let ex5 = "一方で日本麻雀と同じく、その役に対して同時成立が必然な下位の役は取れません。\n "
        let ex6 = "例えば四暗刻に対して三暗刻は取れないということです。 \n"
        let ex7 = "各役に対する必然役も同時にまとめてあります。 \n \n"
        let ex8 = "以下は見方です。 \n"
        
        let ex = ex1 + ex2 + ex3 + ex4 + ex5 + ex6 + ex7 + ex8
        Setumei1.text = ex
        
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
