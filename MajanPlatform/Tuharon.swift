//
//  Tuharon.swift
//  MajanPlatform
//
//  Created by 小松知樹 on 2017/07/30.
//  Copyright © 2017年 Komatsu. All rights reserved.
//

import Foundation

// ツーハーロンの得点計算を行う
// 偶然役、待ち、ウーメンチー、プチューレン、ゼッチョウ、チェンク、チェンフォンク、メンフォンク、ピンフ、スークーイー、アンカン、ミンカン、ウーズ
class Tuharon {
    
    var all = [Int]()
    var man = [Int]()
    var pin = [Int]()
    var sou = [Int]()
    var ji = [Int]()
    var men = [Int]()   // ひとつだけある面子
    var kata = -1       // ひとつだけある面子の型
    var head = -1
    var naki = false    // ひとつだけある面子のなき状態
    var nakiMentsu = [Int]()    // ひとつだけ面子がなきなら入れる
    var tumo = false
    var ba = -1
    var ie = -1
    var mati = -1
    var tuha = [Int]()      // 組合龍の成分
    
    var yaku = [Int](repeating: 0, count: 81)
    
    init(a:[Int], m:[Int], p:[Int], s:[Int], j:[Int], m1:[Int], k1:Int, h:Int, n:Bool, n2:[Int], t:Bool, b:Int, i:Int, w:Int, tuharon:[Int]) {
        self.all = a; self.man = m; self.pin = p; self.sou = s; self.ji = j;
        self.men = m1; self.kata = k1; self.naki = n; self.head = h; self.nakiMentsu = n2;
        self.tumo = t; self.ba = b; self.ie = i; self.mati = w;
        self.tuha = tuharon
    }
    
    // 役の有無を確認して数値を返す
    func check()->[Int] {
        // まず組合龍成分を色ごとに３面子に分ける
        var men1 = [Int](), men2 = [Int](), men3 = [Int]()
        for i in tuha {
            if i <= 8 {
                men1.append(i)
            } else if i <= 17 {
                men2.append(i)
            } else {
                men3.append(i)
            }
        }
        
        // ４面子分の鳴きを作る
        let nakiAll = [false ,false ,false, naki]
        
        // 点数確認
        let x = CheckYaku(m1: men1, m2: men2, m3: men3, m4: men, h: head, k1: 0, k2: 0, k3: 0, k4: kata, m: man, p: pin, s: sou, j: ji, a: all, n: nakiAll, n2: [nakiMentsu], t: tumo, b: ba, i: ie, w: mati)
        yaku = x.check()
        yaku[34] = 1
        
        // チェックの仕方からサンプーコーが付いてしまうので覗く
        yaku[50] = 0
        
        // 待ちはここで判別する
        var matiPt = -1 // なし:0 タンキ:1 ペンチャン:2 カンチャン:3
        if tuha.contains(mati) {
            // ツーハーロンエリアの牌が町の時点で待ち０点
            matiPt = 0
        } else {
            if men.count == 4 || naki {
                // カンか鳴きがあった時点でタンキ確定
                matiPt = 1
            } else {
                // 町 = ヘッドならタンキ
                if mati == head {
                    matiPt = 1
                }
                // シャボに点数はないからシュンツ系でしかありえない
                let pen1 = [[0,1,2], [9,10,11], [18,19,20]]
                let pen2 = [[6,7,8], [15,16,17], [24,25,26]]
                if kata == 0, mati == men[1] {
                    matiPt = 3
                } else if (pen1[0] == men || pen1[0] == men || pen1[0] == men), mati == men[2] {
                    matiPt = 2
                } else if (pen2[0] == men || pen2[0] == men || pen2[0] == men), mati == men[0] {
                    matiPt = 2
                } else {
                    matiPt = 0
                }
            }
        }
        if matiPt == 0 {
            yaku[77] = 0; yaku[78] = 0; yaku[79] = 0
        } else if matiPt == 1 {
            yaku[77] = 0; yaku[78] = 0; yaku[79] = 1
        } else if matiPt == 2 {
            yaku[77] = 1; yaku[78] = 0; yaku[79] = 0
        } else if matiPt == 3 {
            yaku[77] = 0; yaku[78] = 1; yaku[79] = 0
        }
        
        return yaku
    }
    
    
}
