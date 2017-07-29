//
//  SetDetails.swift
//  MajanPlatform
//
//  Created by 小松知樹 on 2017/07/28.
//  Copyright © 2017年 Komatsu. All rights reserved.
//

import UIKit

// ここで完全な役判定を完了させる
class SetDetails: UIViewController {
    
    
    // 前の画面から引き継ぐ変数たち
    var all = [Int]()   // 全ての牌姿
    var agari = [[[Int]]]() // 上がり型となった４面子１ヘッドたち
    var naki = [Bool]() // それぞれの面子の食いの状態
    var nakiMentsu = [[Int]]()  // 鳴いている面子の形
    var mati = -1           // 待ち牌
    
    @IBOutlet weak var tumoHow: UISwitch!
    @IBOutlet weak var kanshanHow: UISwitch!
    @IBOutlet weak var tyankanHow: UISwitch!
    @IBOutlet weak var myaoshaoHow: UISwitch!
    @IBOutlet weak var zecchoHow: UISwitch!
    @IBOutlet weak var haiteiHow: UISwitch!
    @IBOutlet weak var baHow: UISegmentedControl!
    @IBOutlet weak var ieHow: UISegmentedControl!
    
    // リンシャン : チャンカン,ハイテイはない
    @IBAction func rinshan(_ sender: Any) {
        tyankanHow.isOn = false; haiteiHow.isOn = false;
    }
    // チャンカン : ツモ,リンシャン,ミャオシャオ,ハイテイ,ゼッチョウはない
    @IBAction func tyankan(_ sender: Any) {
        tumoHow.isOn = false; kanshanHow.isOn = false; myaoshaoHow.isOn = false;
        haiteiHow.isOn = false; zecchoHow.isOn = false;
    }
    // ミャオシャオ : チャンカン,ハイテイはない
    @IBAction func myaoshao(_ sender: Any) {
        tyankanHow.isOn = false; haiteiHow.isOn = false;
    }
    // ゼッチョウ : チャンカンはない
    @IBAction func zeccho(_ sender: Any) {
        tyankanHow.isOn = false
    }
    // ハイテイ : ツモ,リンシャン,チャンカン,ミャオシャオはない
    @IBAction func haitei(_ sender: Any) {
        tumoHow.isOn = false; kanshanHow.isOn = false;
        tyankanHow.isOn = false; myaoshaoHow.isOn = false;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("ここから遷移後")
        print(all)
        print(agari)
        print(naki)
        print(nakiMentsu)
        print(mati)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
        
    }


}
