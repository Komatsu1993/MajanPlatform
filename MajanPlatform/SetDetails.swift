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
    
    // 次の画面に送る処理,役と点数を調べる
    // 点数を送る
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tes = segue.destination as! Kekka
        
        var ans = [String: Int]()  // 数値で表した役を入れる、次の画面へ送る
        var now = -1       // 現在の最高得点、高点法に使う
        
        // 各上がり系の役判定に入る
        for pai in agari {
            // まず面子系の場合
            if pai.count == 5 {
                // 上がり系の設定
                var kata = [-1, -1, -1, -1]
                for i in 1...4 {
                    if pai[i][1] - pai[i][0] == 1 {
                        kata[i - 1] = 0
                    } else if pai[i].count == 3 {
                        kata[i - 1] = 1
                    } else {
                        kata[i - 1] = 2
                    }
                }
                // マンピンソウジの設定
                var man = [Int](), pin = [Int](), sou = [Int](), ji = [Int]()
                for i in 0...33 {
                    if i <= 8 {
                        man.append(all[i])
                    } else if i <= 17 {
                        pin.append(all[i])
                    } else if i <= 26 {
                        sou.append(all[i])
                    } else if i <= 33 {
                        ji.append(all[i])
                    }
                }
                // 風の設定
                let ba = baHow.selectedSegmentIndex
                let ie = ieHow.selectedSegmentIndex
                
                let check = CheckYaku(m1: pai[1], m2: pai[2], m3: pai[3], m4: pai[4], h: pai[0][0], k1: kata[0], k2: kata[1], k3: kata[2], k4: kata[3], m: man, p: pin, s: sou, j: ji, a: all, n: naki, n2: nakiMentsu, t: tumoHow.isOn, b: ba, i: ie, w: mati)
                var yaku = check.check()
                if kanshanHow.isOn {
                    yaku[45] = 1
                }
                if tyankanHow.isOn {
                    yaku[46] = 1
                }
                if myaoshaoHow.isOn {
                    yaku[43] = 1
                }
                if haiteiHow.isOn {
                    yaku[44] = 1
                }
                if zecchoHow.isOn {
                    yaku[58] = 1
                }
                
                // 点数の計算
                // まず上がり役と点数の辞書を作る
                let yakuPt = henkan(yaku: yaku)
                var ten = 0
                for (_, pt) in yakuPt {
                    ten += pt
                }
                
                // ウーファンフーの設定
                if ten == 0 {
                    ten = 8
                    yaku[42] = 1
                }
                
                // 高天法の処理
                if ten >= now {
                    ans = yakuPt
                    now = ten
                }
        
            }
        }
        
        tes.tenPt = ans
        tes.pt = now
    }
    
    // 上がり役の数値から役名とその点数からなる辞書を作る
    func henkan(yaku:[Int])->[String: Int] {
        var yaku = yaku
        var yakuStr = [String: Int]()
        
        for i in 0...80 {
            while(yaku[i] > 0) {
                switch i {
                case 0 : yakuStr["大四喜"] = 88
                case 1 : yakuStr["大三元"] = 88
                case 2 : yakuStr["緑一色"] = 88
                case 3 : yakuStr["九連宝燈"] = 88
                case 4 : yakuStr["四槓"] = 88
                case 5 : yakuStr["連七対"] = 88
                case 6 : yakuStr["十三幺"] = 88
                case 7 : yakuStr["清幺九"] = 64
                case 8 : yakuStr["小四喜"] = 64
                case 9 : yakuStr["小三元"] = 64
                case 10 : yakuStr["字一色"] = 64
                case 11 : yakuStr["四暗刻"] = 64
                case 12 : yakuStr["一色双龍会"] = 64
                case 13 : yakuStr["一色四同順"] = 48
                case 14 : yakuStr["一色四節高"] = 48
                case 15 : yakuStr["一色四歩高"] = 32
                case 16 : yakuStr["三槓"] = 32
                case 17 : yakuStr["混幺九"] = 32
                case 18 : yakuStr["七対"] = 24
                case 19 : yakuStr["七星不靠"] = 24
                case 20 : yakuStr["全双刻"] = 24
                case 21 : yakuStr["清一色"] = 24
                case 22 : yakuStr["一色三同順"] = 24
                case 23 : yakuStr["一色三節高"] = 24
                case 24 : yakuStr["全大"] = 24
                case 25 : yakuStr["全中"] = 24
                case 26 : yakuStr["全小"] = 24
                case 27 : yakuStr["清龍"] = 16
                case 28 : yakuStr["三色双龍会"] = 16
                case 29 : yakuStr["一色三歩高"] = 16
                case 30 : yakuStr["全帯五"] = 16
                case 31 : yakuStr["三同刻"] = 16
                case 32 : yakuStr["三暗刻"] = 16
                case 33 : yakuStr["全不靠"] = 12
                case 34 : yakuStr["組合龍"] = 12
                case 35 : yakuStr["大于五"] = 12
                case 36 : yakuStr["小于五"] = 12
                case 37 : yakuStr["三風刻"] = 12
                case 38 : yakuStr["花龍"] = 8
                case 39 : yakuStr["推不倒"] = 8
                case 40 : yakuStr["三色三同順"] = 8
                case 41 : yakuStr["三色三節高"] = 8
                case 42 : yakuStr["無番和"] = 8
                case 43 : yakuStr["妙手回春"] = 8
                case 44 : yakuStr["海底撈月"] = 8
                case 45 : yakuStr["槓上開花"] = 8
                case 46 : yakuStr["搶槓和"] = 8
                case 47 : yakuStr["双暗槓"] = 8
                case 48 : yakuStr["碰碰和"] = 6
                case 49 : yakuStr["混一色"] = 6
                case 50 : yakuStr["三色三歩高"] = 6
                case 51 : yakuStr["五門斉"] = 6
                case 52 : yakuStr["全求人"] = 6
                case 53 : yakuStr["双箭刻"] = 6
                case 54 : yakuStr["双槓"] = 6
                case 55 : yakuStr["全帯幺"] = 4
                case 56 : yakuStr["不求人"] = 4
                case 57 : yakuStr["双明槓"] = 4
                case 58 : yakuStr["和絶張"] = 4
                case 59 : yakuStr["箭刻"] = 2
                case 60 : yakuStr["圏風刻"] = 2
                case 61 : yakuStr["門風刻"] = 2
                case 62 : yakuStr["門前清"] = 2
                case 63 : yakuStr["平和"] = 2
                case 64 : yakuStr["四帰一"] = 2
                case 65 : yakuStr["双同刻"] = 2
                case 66 : yakuStr["双暗刻"] = 2
                case 67 : yakuStr["暗槓"] = 2
                case 68 : yakuStr["断幺"] = 2
                case 69 : yakuStr["一般高"] = 1
                case 70 : yakuStr["喜相逢"] = 1
                case 71 : yakuStr["連六"] = 1
                case 72 : yakuStr["老少副"] = 1
                case 73 : yakuStr["幺九刻"] = 1
                case 74 : yakuStr["明槓"] = 1
                case 75 : yakuStr["絶一門"] = 1
                case 76 : yakuStr["無字"] = 1
                case 77 : yakuStr["辺張"] = 1
                case 78 : yakuStr["坎張"] = 1
                case 79 : yakuStr["単調将"] = 1
                case 80 : yakuStr["自摸"] = 1
                default : print("default")
                }
                yaku[i] -= 1
            }
        }
        
        return yakuStr
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
        
    }


}
