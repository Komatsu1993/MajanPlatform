//
//  PaiSet.swift
//  MajanPlatform
//
//  Created by 小松知樹 on 2017/07/27.
//  Copyright © 2017年 Komatsu. All rights reserved.
//

import UIKit

class PaiSet: UIViewController {
    
    @IBAction func man1(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man1-66-90-s-emb.png"), tiPai: "1,2,3", ponPai: "1,1,1", kanPai: "1,1,1,1", aPai: 0)
    }
    @IBAction func man2(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man2-66-90-s-emb.png"), tiPai: "2,3,4", ponPai: "2,2,2", kanPai: "2,2,2,2", aPai: 1)
    }
    @IBAction func man3(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man3-66-90-s-emb.png"), tiPai: "3,4,5", ponPai: "3,3,3", kanPai: "3,3,3,3", aPai: 2)
    }
    @IBAction func man4(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man4-66-90-s-emb.png"), tiPai: "4,5,6", ponPai: "4,4,4", kanPai: "4,4,4,4", aPai: 3)
    }
    @IBAction func man5(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man5-66-90-s-emb.png"), tiPai: "5,6,7", ponPai: "5,5,5", kanPai: "5,5,5,5", aPai: 4)
    }
    @IBAction func man6(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man6-66-90-s-emb.png"), tiPai: "6,7,8", ponPai: "6,6,6", kanPai: "6,6,6,6", aPai: 5)
    }
    @IBAction func man7(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man7-66-90-s-emb.png"), tiPai: "7,8,9", ponPai: "7,7,7", kanPai: "7,7,7,7", aPai: 6)
    }
    @IBAction func man8(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man8-66-90-s-emb.png"), tiPai: "N", ponPai: "8,8,8", kanPai: "8,8,8,8", aPai: 7)
    }
    @IBAction func man9(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "man9-66-90-s-emb.png"), tiPai: "N", ponPai: "9,9,9", kanPai: "9,9,9,9", aPai: 8)
    }
    @IBAction func pin1(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin1-66-90-s-emb.png"), tiPai: "10,11,12", ponPai: "10,10,10", kanPai: "10,10,10,10", aPai: 9)
    }
    @IBAction func pin2(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin2-66-90-s-emb.png"), tiPai: "11,12,13", ponPai: "11,11,11", kanPai: "11,11,11,11", aPai: 10)
    }
    @IBAction func pin3(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin3-66-90-s-emb.png"), tiPai: "12,13,14", ponPai: "12,12,12", kanPai: "12,12,12,12", aPai: 11)
    }
    @IBAction func pin4(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin4-66-90-s-emb.png"), tiPai: "13,14,15", ponPai: "13,13,13", kanPai: "13,13,13,13", aPai: 12)
    }
    @IBAction func pin5(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin5-66-90-s-emb.png"), tiPai: "14,15,16", ponPai: "14,14,14", kanPai: "14,14,14,14", aPai: 13)
    }
    @IBAction func pin6(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin6-66-90-s-emb.png"), tiPai: "15,16,17", ponPai: "15,15,15", kanPai: "15,15,15,15", aPai: 14)
    }
    @IBAction func pin7(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin7-66-90-s-emb.png"), tiPai: "16,17,18", ponPai: "16,16,16", kanPai: "16,16,16,16", aPai: 15 )
    }
    @IBAction func pin8(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin8-66-90-s-emb.png"), tiPai: "N", ponPai: "17,17,17", kanPai: "17,17,17,17", aPai: 16)
    }
    @IBAction func pin9(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "pin9-66-90-s-emb.png"), tiPai: "N", ponPai: "18,18,18", kanPai: "18,18,18,18", aPai: 17)
    }
    @IBAction func sou1(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou1-66-90-s-emb.png"), tiPai: "19,20,21", ponPai: "19,19,19", kanPai: "19,19,19,19", aPai: 18)
    }
    @IBAction func sou2(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou2-66-90-s-emb.png"), tiPai: "20,21,22", ponPai: "20,20,20", kanPai: "20,20,20,20", aPai: 19)
    }
    @IBAction func sou3(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou3-66-90-s-emb.png"), tiPai: "21,22,23", ponPai: "21,21,21", kanPai: "21,21,21,21", aPai: 20)
    }
    @IBAction func sou4(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou4-66-90-s-emb.png"), tiPai: "22,23,24", ponPai: "22,22,22", kanPai: "22,22,22,22", aPai: 21)
    }
    @IBAction func sou5(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou5-66-90-s-emb.png"), tiPai: "23,24,25", ponPai: "23,23,23", kanPai: "23,23,23,23", aPai: 22)
    }
    @IBAction func sou6(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou6-66-90-s-emb.png"), tiPai: "24,25,26", ponPai: "24,24,24", kanPai: "24,24,24,24", aPai: 23)
    }
    @IBAction func sou7(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou7-66-90-s-emb.png"), tiPai: "25,26,27", ponPai: "25,25,25", kanPai: "25,25,25,25", aPai: 24)
    }
    @IBAction func sou8(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou8-66-90-s-emb.png"), tiPai: "N", ponPai: "26,26,26", kanPai: "26,26,26,26", aPai: 25)
    }
    @IBAction func sou9(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "sou9-66-90-s-emb.png"), tiPai: "N", ponPai: "27,27,27", kanPai: "27,27,27,27", aPai: 26)
    }
    @IBAction func ji1(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "ji1-66-90-s-emb.png"), tiPai: "N", ponPai: "28,28,28", kanPai: "28,28,28,28", aPai: 27)
    }
    @IBAction func ji2(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "ji2-66-90-s-emb.png"), tiPai: "N", ponPai: "29,29,29", kanPai: "29,29,29,29", aPai: 28)
    }
    @IBAction func ji3(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "ji3-66-90-s-emb.png"), tiPai: "N", ponPai: "30,30,30", kanPai: "30,30,30,30", aPai: 29)
    }
    @IBAction func ji4(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "ji4-66-90-s-emb.png"), tiPai: "N", ponPai: "31,31,31", kanPai: "31,31,31,31", aPai: 30)
    }
    @IBAction func ji5(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "ji6-66-90-s-yoko-emb.png"), tiPai: "N", ponPai: "32,32,32", kanPai: "32,32,32,32", aPai: 31)
    }
    @IBAction func ji6(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "ji5-66-90-s-emb.png"), tiPai: "N", ponPai: "33,33,33", kanPai: "33,33,33,33", aPai: 32)
    }
    @IBAction func ji7(_ sender: Any) {
        makeRow(p: #imageLiteral(resourceName: "ji7-66-90-s-emb.png"), tiPai: "N", ponPai: "34,34,34", kanPai: "34,34,34,34", aPai: 33)
    }
    
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
    
    // 初期化処理
    @IBAction func reset(_ sender: Any) {
        now = 0
        for i in 0...nowMen - 1 {
            pais[i].setImage(#imageLiteral(resourceName: "defalt-white.png"), for: .normal);
        }
        nowMen = 0
        naki = [String]()
        
        all = [Int](repeating:0, count:34)
        kui = [false, false, false, false]
        nakiMentsu = [[Int]]()
        nakiNum = 0
        kanNum = 0
        henkanDic = [UIImage:Int]()
        nowMati = -1
        matiPai.setImage(#imageLiteral(resourceName: "defalt-white.png"), for: .normal)
        
        for i in nakiImage {
            i[0].setImage(#imageLiteral(resourceName: "default-yoko.png"), for: .normal)
            for j in 1...3 {
                i[j].setImage(#imageLiteral(resourceName: "default-shrink.png"), for: .normal)
            }
        }
        
    }
    
    @IBOutlet weak var nakiPai: UILabel!
    
    @IBOutlet weak var ti: UISwitch!
    @IBOutlet weak var pon: UISwitch!
    @IBOutlet weak var minkan: UISwitch!
    @IBOutlet weak var ankan: UISwitch!
    
    @IBAction func tiAction(_ sender: UISwitch) {
        pon.isOn = false; minkan.isOn = false; ankan.isOn = false;
    }
    @IBAction func ponAction(_ sender: UISwitch) {
        ti.isOn = false; minkan.isOn = false; ankan.isOn = false;
    }
    @IBAction func minkanAction(_ sender: UISwitch) {
        ti.isOn = false; pon.isOn = false; ankan.isOn = false;
    }
    @IBAction func ankanAction(_ sender: Any) {
        ti.isOn = false; pon.isOn = false; minkan.isOn = false;
    }

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
    
    @IBAction func mati1(_ sender: Any) {
        if pai1.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai1.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati2(_ sender: Any) {
        if pai2.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai2.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati3(_ sender: Any) {
        if pai3.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai3.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati4(_ sender: Any) {
        if pai4.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai4.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati5(_ sender: Any) {
        if pai5.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai5.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati6(_ sender: Any) {
        if pai6.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai6.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati7(_ sender: Any) {
        if pai7.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai7.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati8(_ sender: Any) {
        if pai8.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai8.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati9(_ sender: Any) {
        if pai9.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai9.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati10(_ sender: Any) {
        if pai10.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai10.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati11(_ sender: Any) {
        if pai11.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai11.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati12(_ sender: Any) {
        if pai12.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai12.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati13(_ sender: Any) {
        if pai12.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai13.currentImage, for: .normal);
            nowMati = 0
        }
    }
    @IBAction func mati14(_ sender: Any) {
        if pai12.currentImage != #imageLiteral(resourceName: "defalt-white.png") {
            matiPai.setImage(pai14.currentImage, for: .normal);
            nowMati = 0
        }
    }
    
    var pais = [UIButton!]()     // 第一行の門前牌姿を入れる配列
    var naki = [String]()        // 第二行の鳴いた牌を入れる文字列
    var now = 0                 // 今入れられている牌の枚数
    var nowMen = 0              // 今入れられている門前牌の枚数
    var nakiNum = 0             // 鳴いている面子の数
    var kanNum = 0              // カンの数、入力不正のチェックに使う
    var nowMati = -1            // 今待ち牌が選択されているかどうかのチェック
    
    var henkanDic = [UIImage:Int]()     // 画像からその牌を得るために使う辞書
    var nakiImage = [[UIButton]]()      // 鳴き牌の表示用ボタン
    
    // 点数処理のための変数
    var all = [Int](repeating:0, count:34)       // 全ての牌姿
    var kui = [false, false, false, false]      // 各面子が鳴いているかどうか
    
    var mentsu1 = [Int]()   // 面子１
    var mentsu2 = [Int]()   // 面子２
    var mentsu3 = [Int]()   // 面子３
    var mentsu4 = [Int]()   // 面子４
    var head = -1          // ヘッド
    
    var man = [Int]()       // マンズ
    var pin = [Int]()       // ピンズ
    var sou = [Int]()       // ソウズ
    var ji = [Int]()        // ジパイ
    var mati = -1           // 待ち
    
    var nakiMentsu = [[Int]]()  // 鳴いている面子
    
    // 画面ロード時の処理
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        matiPai.setImage(#imageLiteral(resourceName: "defalt-white.png"), for: .normal)
        
        pais = [self.pai1, self.pai2, self.pai3, self.pai4, self.pai5, self.pai6, self.pai7, self.pai8, self.pai9, self.pai10, self.pai11, self.pai12, self.pai13, self.pai14]
        for i in 0...13 {
            pais[i].setImage(#imageLiteral(resourceName: "defalt-white.png"), for: .normal);
        }
        
        // 鳴き牌表示用のボタンの配列を作る
        nakiImage = [[naki1_1, naki1_2, naki1_3, naki1_4], [naki2_1, naki2_2, naki2_3, naki2_4], [naki3_1, naki3_2, naki3_3, naki3_4], [naki4_1, naki4_2, naki4_3, naki4_4]]
        for i in nakiImage {
            i[0].setImage(#imageLiteral(resourceName: "default-yoko.png"), for: .normal)
            for j in 1...3 {
                i[j].setImage(#imageLiteral(resourceName: "default-shrink.png"), for: .normal)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 確定タップ時の処理
    // まず入力の不正チェック、次に上がり判定をし、上がっているなら次へ遷移する
    @IBAction func Search(_ sender: Any) {
        
        var errorCheck = 0      // この値が0の時のみ正常
        
        // まず５枚以上使用していないかのチェック
        for i in all {
            if i > 4 {
                errorCheck += 1
                break
            }
        }
        
        // 牌の合計枚数がカンを考慮した上で正確な枚数か
        var num = 0 - kanNum
        for i in all {
            num += i
        }
        if num != 14 {
            errorCheck += 1
        }
        
        // 入力に問題がなければ上がりの判定を行う
        if errorCheck == 0 {
            let agariHantei = AgariHantei(n: nakiMentsu)
            var a = all     // 上がり探索のallは鳴いた面子は引いてある必要がある
            for i in nakiMentsu {
                for j in i {
                    a[j] -= 1
                }
            }
            agariHantei.headSearch(a: a)
            let mentsu = agariHantei.agari
        }
    }
    
    
    // 文字列配列を文字列にならべかえる
    func makeStr(str:[String])->String {
        var x = ""
        for i in str {
            x += (i + " : ")
        }
        return x
    }
    
    // タップした牌を上の行に表示する処理 
    // 引数として、その牌、チー、ポン、カンの形
    // 作るのは all, kui, nakiMentsu
    func makeRow(p:UIImage, tiPai:String, ponPai:String, kanPai:String, aPai:Int)->() {
        if now < 14 {
            if ti.isOn {
                if tiPai != "N", nakiNum < 4 {
                    naki.append(tiPai); now += 3
                    all[aPai] += 1; all[aPai + 1] += 1; all[aPai + 2] += 1;
                    nakiMentsu.append([aPai, aPai + 1, aPai + 2])
                    nakiImage[nakiNum][0].setImage(henkanImage(num: aPai, muki: 1), for: .normal)
                    nakiImage[nakiNum][1].setImage(henkanImage(num: aPai + 1, muki: 0), for: .normal)
                    nakiImage[nakiNum][2].setImage(henkanImage(num: aPai + 2, muki: 0), for: .normal)
                    kui[nakiNum] = true; nakiNum += 1;
                }
            } else if pon.isOn {
                if nakiNum < 4 {
                    naki.append(ponPai);now += 3
                    all[aPai] += 3
                    nakiMentsu.append([aPai, aPai, aPai])
                    nakiImage[nakiNum][0].setImage(henkanImage(num: aPai, muki: 1), for: .normal)
                    nakiImage[nakiNum][1].setImage(henkanImage(num: aPai, muki: 0), for: .normal)
                    nakiImage[nakiNum][2].setImage(henkanImage(num: aPai, muki: 0), for: .normal)
                    kui[nakiNum] = true; nakiNum += 1;
                }
            } else if minkan.isOn {
                if nakiNum < 4 {
                    naki.append(kanPai); now += 3
                    all[aPai] += 4; kanNum += 1;
                    nakiMentsu.append([aPai, aPai, aPai, aPai])
                    nakiImage[nakiNum][0].setImage(henkanImage(num: aPai, muki: 1), for: .normal)
                    nakiImage[nakiNum][1].setImage(henkanImage(num: aPai, muki: 0), for: .normal)
                    nakiImage[nakiNum][2].setImage(henkanImage(num: aPai, muki: 0), for: .normal)
                    nakiImage[nakiNum][3].setImage(henkanImage(num: aPai, muki: 0), for: .normal)
                    kui[nakiNum] = true; nakiNum += 1;
                }
            } else if ankan.isOn {
                if nakiNum < 4 {
                    naki.append(kanPai); now += 3
                    all[aPai] += 4; kanNum += 1;
                    nakiMentsu.append([aPai, aPai, aPai, aPai])
                    nakiImage[nakiNum][0].setImage(#imageLiteral(resourceName: "ankanUra.png"), for: .normal)
                    nakiImage[nakiNum][1].setImage(henkanImage(num: aPai, muki: 0), for: .normal)
                    nakiImage[nakiNum][2].setImage(henkanImage(num: aPai, muki: 0), for: .normal)
                    nakiImage[nakiNum][3].setImage(#imageLiteral(resourceName: "ankanUra.png"), for: .normal)
                    kui[nakiNum] = false; nakiNum += 1;
                }
            } else {
                pais[nowMen].setImage(p, for: .normal); now += 1; nowMen += 1; all[aPai] += 1;
            }
        }
        henkanDic[p] = aPai
    }
    
    // 引数を次の画面へ渡す処理
    // 上がりに問題がない時のみ遷移し、そうでなければアラート
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var errorCheck = 0      // この値が0の時のみ正常
        
        // まず５枚以上使用していないかのチェック : エラー時 : 1
        for i in all {
            if i > 4 {
                errorCheck = 1
                break
            }
        }
        
        // 牌の合計枚数がカンを考慮した上で正確な枚数か : エラー時 : 2
        var num = 0 - kanNum
        for i in all {
            num += i
        }
        if num != 14 {
            errorCheck = 2
        }
        
        // 入力に問題がなければ上がりの判定を行う
        var mentsu = [[[Int]]]()
        if errorCheck == 0 {
            let agariHantei = AgariHantei(n: nakiMentsu)
            var a = all     // 上がり探索のallは鳴いた面子は引いてある必要がある
            for i in nakiMentsu {
                for j in i {
                    a[j] -= 1
                }
            }
            agariHantei.headSearch(a: a)
            mentsu = agariHantei.agari
        }
        
        
        if segue.identifier == "toDetail" {
            
            let tes = segue.destination as! SetDetails
            if nowMati == -1 {
                // 入力が不正だった場合に表示するアラート
                let alert = UIAlertController(title: "", message: "待ちが選択されていません", preferredStyle: .alert)
                let kakunin = UIAlertAction(title: "確認", style: .default) {
                    action in print("確認")
                }
                alert.addAction(kakunin)
                present(alert, animated: true, completion: nil)
            } else if errorCheck == 1 {
                // 入力が不正だった場合に表示するアラート
                let alert = UIAlertController(title: "", message: "５枚以上使用している牌があります", preferredStyle: .alert)
                let kakunin = UIAlertAction(title: "確認", style: .default) {
                    action in print("確認")
                }
                alert.addAction(kakunin)
                present(alert, animated: true, completion: nil)
            } else if errorCheck == 2 {
                // 入力が不正だった場合に表示するアラート
                let alert = UIAlertController(title: "", message: "合計枚数が不正です", preferredStyle: .alert)
                let kakunin = UIAlertAction(title: "確認", style: .default) {
                    action in print("確認")
                }
                alert.addAction(kakunin)
                present(alert, animated: true, completion: nil)
            } else if mentsu.isEmpty {
                // 入力が不正だった場合に表示するアラート
                let alert = UIAlertController(title: "", message: "上がっていません", preferredStyle: .alert)
                let kakunin = UIAlertAction(title: "確認", style: .default) {
                    action in print("確認")
                }
                alert.addAction(kakunin)
                present(alert, animated: true, completion: nil)
            } else {
            // 次の画面への変数代入
                tes.all = self.all
                tes.agari = mentsu
                tes.naki = self.kui
                tes.nakiMentsu = self.nakiMentsu
                tes.mati = henkanDic[matiPai.currentImage!]!
                
            // 次の画面へ画像も送る
                let x = [pais[0].currentImage, pais[1].currentImage, pais[2].currentImage, pais[3].currentImage, pais[4].currentImage, pais[5].currentImage, pais[6].currentImage,
                         pais[7].currentImage, pais[8].currentImage, pais[9].currentImage, pais[10].currentImage, pais[11].currentImage,
                         pais[12].currentImage, pais[13].currentImage]
                let y = [[nakiImage[0][0].currentImage, nakiImage[0][1].currentImage, nakiImage[0][2].currentImage, nakiImage[0][3].currentImage],
                         [nakiImage[1][0].currentImage, nakiImage[1][1].currentImage, nakiImage[1][2].currentImage, nakiImage[1][3].currentImage],
                         [nakiImage[2][0].currentImage, nakiImage[2][1].currentImage, nakiImage[2][2].currentImage, nakiImage[2][3].currentImage],
                         [nakiImage[3][0].currentImage, nakiImage[3][1].currentImage, nakiImage[3][2].currentImage, nakiImage[3][3].currentImage]]
                tes.menzenPais = x as! [UIImage]
                tes.nakiPais = y as! [[UIImage]]
            }
        }
    }
    
    // 鳴きの面子を表示するための関数
    // 引数はその牌の数字と縦か横か : 縦 0 横 1
    // 戻り値は画像
    func henkanImage(num:Int, muki: Int) -> UIImage {
        var x = #imageLiteral(resourceName: "default-shrink.png")
        let shrink: [UIImage] = [#imageLiteral(resourceName: "man1-shrink.png"), #imageLiteral(resourceName: "man2-shrink.png"), #imageLiteral(resourceName: "man3-shrink.png"), #imageLiteral(resourceName: "man4-shrink.png"), #imageLiteral(resourceName: "man5-shrink.png"), #imageLiteral(resourceName: "man6-shrink.png"), #imageLiteral(resourceName: "man7-shrink.png"), #imageLiteral(resourceName: "man8-shrink.png"), #imageLiteral(resourceName: "man9-shrink.png"),
                                #imageLiteral(resourceName: "pin1-shrink.png"), #imageLiteral(resourceName: "pin2-shrink.png"), #imageLiteral(resourceName: "pin3-shrink.png"), #imageLiteral(resourceName: "pin4-shrink.png"), #imageLiteral(resourceName: "pin5-shrink.png"), #imageLiteral(resourceName: "pin6-shrink.png"), #imageLiteral(resourceName: "pin7-shrink.png"), #imageLiteral(resourceName: "pin8-shrink.png"), #imageLiteral(resourceName: "pin9-shrink.png"),
                                #imageLiteral(resourceName: "sou1-shrink.png"), #imageLiteral(resourceName: "sou2-shrink.png"), #imageLiteral(resourceName: "sou3-shrink.png"), #imageLiteral(resourceName: "sou4-shrink.png"), #imageLiteral(resourceName: "sou5-shrink.png"), #imageLiteral(resourceName: "sou6-shrink.png"), #imageLiteral(resourceName: "sou7-shrink.png"), #imageLiteral(resourceName: "sou8-shrink.png"), #imageLiteral(resourceName: "sou9-shrink.png"),
                                #imageLiteral(resourceName: "ji1-shurink.png"), #imageLiteral(resourceName: "ji2-shrink.png"), #imageLiteral(resourceName: "ji3-shrink.png"), #imageLiteral(resourceName: "ji4-shrink.png"), #imageLiteral(resourceName: "ji6-shrink.png"),#imageLiteral(resourceName: "ji5-shrink.png") , #imageLiteral(resourceName: "ji7-shrink.png"),]
        let yoko: [UIImage] = [#imageLiteral(resourceName: "man1-yoko.png"), #imageLiteral(resourceName: "man2-yoko.png"), #imageLiteral(resourceName: "man3-yoko.png"), #imageLiteral(resourceName: "man4-yoko.png"), #imageLiteral(resourceName: "man5-yoko.png"), #imageLiteral(resourceName: "man6-yoko.png"), #imageLiteral(resourceName: "man7-yoko.png"), #imageLiteral(resourceName: "man8-yoko.png"), #imageLiteral(resourceName: "man9-yoko.png"),
                               #imageLiteral(resourceName: "pin1-yoko.png"), #imageLiteral(resourceName: "pin2-yoko.png"), #imageLiteral(resourceName: "pin3-yoko.png"), #imageLiteral(resourceName: "pin4-yoko.png"), #imageLiteral(resourceName: "pin5-yoko.png"), #imageLiteral(resourceName: "pin6-yoko.png"), #imageLiteral(resourceName: "pin7-yoko.png"), #imageLiteral(resourceName: "pin8-yoko.png"), #imageLiteral(resourceName: "pin9-yoko.png"),
                               #imageLiteral(resourceName: "sou1-yoko.png"), #imageLiteral(resourceName: "sou2-yoko.png"), #imageLiteral(resourceName: "sou3-yoko.png"), #imageLiteral(resourceName: "sou4-yoko.png"), #imageLiteral(resourceName: "sou5-yoko.png"), #imageLiteral(resourceName: "sou6-yoko.png"), #imageLiteral(resourceName: "sou7-yoko.png"), #imageLiteral(resourceName: "sou8-yoko.png"), #imageLiteral(resourceName: "sou9-yoko.png"),
                               #imageLiteral(resourceName: "ji1-shurink.png"), #imageLiteral(resourceName: "ji2-shrink.png"), #imageLiteral(resourceName: "ji3-shrink.png"), #imageLiteral(resourceName: "ji4-shrink.png"), #imageLiteral(resourceName: "ji6-shrink.png"),#imageLiteral(resourceName: "ji5-shrink.png") , #imageLiteral(resourceName: "ji7-shrink.png"),]
        if muki == 0 {
            x = shrink[num]
        } else {
            x = yoko[num]
        }
        return x
    }
    
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
        
    }

}
