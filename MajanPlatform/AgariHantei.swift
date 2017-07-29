//
//  AgariHantei.swift
//  MajanPlatform
//
//  Created by 小松知樹 on 2017/07/28.
//  Copyright © 2017年 Komatsu. All rights reserved.
//

import Foundation

// 上がり判定をするメソッド
// 常にヘッドが最初、鳴きがあればそれが次に入る配列を生成する
class AgariHantei {
    
    var all = [Int]()       // 全ての牌姿
    var naki = [[Int]]()    // 鳴きで確定している面子
    var mentsu = [[Int]]()  // 面子構成を入れる
    var agari = [[[Int]]]() // mentsuたちを入れる
    
    init(n:[[Int]]) {
        self.naki = n
    }
    
    // ヘッドを探す
    // ヘッド候補を取り出し、それをmentsuのヘッド部分に入れ、残りを調査する
    func headSearch(a:[Int])->() {
        var a = a
        
        var num = 0
        for i in a {
            if i >= 2 {
                a[num] -= 2
                mentsu.append([num, num])
                mentsu += naki
                mentsuSearch(a: a)
                
                a[num] += 2; mentsu = [[Int]]();
            }
            num += 1
        }
        
        if naki.isEmpty {
            print("here")
            checkChitoi(a: a)
            checkTokushu(a: a)
        }
        
        checkTuharon(a: a)
    }
    
    // ヘッドを抜いた面子で上がりが成立するか判定する
    // コーツの可能性の個数で分けて、シュンツのみの候補からなる配列にして調査する
    func mentsuSearch(a:[Int])->() {
        var a = a
        let mentsuReset = mentsu
        
        var anko = [Int]()  // アンコの場所
        var num = 0
        // まずアンコの可能性を探す
        for i in a {
            if i >= 3 {
                anko.append(num)
            }
            num += 1
        }
        
        // アンコ数 = 4 : スーアンク確定
        if anko.count == 4 {
            for i in anko {
                if i == 3 { mentsu.append([i, i, i]) }
                else { mentsu.append([i, i, i, i]) }
            }
            agari.append(mentsu)
        }
        
        // アンコ数 = 3 : 場合分け
        if anko.count == 3 {
            // ０個
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            
            // １個 : ３通り
            a[anko[0]] -= 3
            mentsu = mentsuReset
            mentsu.append([Int](repeating: anko[0], count: 3))
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            a[anko[0]] += 3; a[anko[1]] -= 3;
            mentsu = mentsuReset
            mentsu.append([Int](repeating: anko[1], count: 3))
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            a[anko[1]] += 3; a[anko[2]] -= 3;
            mentsu = mentsuReset
            mentsu.append([Int](repeating: anko[2], count: 3))
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            
            // ２個 : ３通り
            a[anko[0]] -= 3
            mentsu = mentsuReset
            mentsu += [[anko[0], anko[0], anko[0]], [anko[2], anko[2], anko[2]]]
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            a[anko[0]] += 3; a[anko[1]] -= 3;
            mentsu = mentsuReset
            mentsu += [[anko[2], anko[2], anko[2]], [anko[1], anko[1], anko[1]]]
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            a[anko[2]] += 3; a[anko[0]] -= 3;
            mentsu = mentsuReset
            mentsu += [[anko[0], anko[0], anko[0]], [anko[1], anko[1], anko[1]]]
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            
            // ３個 : １通り
            a[anko[2]] -= 3;
            mentsu = mentsuReset
            mentsu += [[anko[0], anko[0], anko[0]], [anko[1], anko[1], anko[1]], [anko[2], anko[2], anko[2]]]
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
        }
        
        // アンコ数 = 2 : 場合分け
        if anko.count == 2 {
            // ０個
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            
            // １個 : ２通り
            a[anko[0]] -= 3
            mentsu = mentsuReset
            mentsu.append([Int](repeating: anko[0], count: 3))
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            a[anko[0]] += 3; a[anko[1]] -= 3;
            mentsu = mentsuReset
            mentsu.append([Int](repeating: anko[1], count: 3))
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            
            // ２個：１通り
            a[anko[0]] -= 3
            mentsu = mentsuReset
            mentsu += [[anko[0], anko[0], anko[0]], [anko[1], anko[1], anko[1]]]
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
        }
        
        // アンコ数 = 1 : 場合分け
        if anko.count == 1 {
            // アンコ０個で確認
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
            
            // アンコ１個で確認
            a[anko[0]] -= 3
            mentsu = mentsuReset
            mentsu.append([anko[0], anko[0], anko[0]])
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
        }
        
        // アンコ数 = 0 : 確定
        if anko.count == 0 {
            if shuntsuSearch(a: a) {
                agari.append(mentsu)
            }
        }
        
    }
    
    func shuntsuSearch(a:[Int])->Bool {
        var a = a
        var shuntsu = [[Int]]()
        
        var shuntsuHead = [Int]()
        var num = 0
        for i in a {
            if i > 0 {
                shuntsuHead.append(num)
            }
            num += 1
        }
        
        for i in shuntsuHead {
            let x = [7,8,16,17,25,26,27,28,29,30,31,32,33]
            if x.contains(i) {
                continue
            }
            while a[i] > 0 {
                a[i] -= 1; a[i + 1] -= 1; a[i + 2] -= 1;
                shuntsu.append([i, i + 1, i + 2])
            }
        }
        let test = [Int](repeating: 0, count: 34)
        if a == test {
            mentsu += shuntsu
            return true
        } else {
            return false
        }
    }
    
    // 七対子のチェック, 鳴いていない前提でチェックする
    func checkChitoi(a:[Int])->() {
        var x = 0
        for i in a {
            if i != 0, i != 2, i != 4 {
                x += 1
            }
        }
        if x == 0 {
            for i in 0...33 {
                if a[i] > 0 {
                    if a[i] == 2 {
                        mentsu.append([i, i])
                    } else {
                        mentsu.append([i, i])
                        mentsu.append([i, i])
                    }
                }
            }
            agari.append(mentsu)
        }
    }
    
    // 特殊系 : プカオ、国士のチェック、鳴いていない前提でチェックする
    func checkTokushu(a:[Int])->() {
        let sisan = [0,8,9,17,18,26,27,28,29,30,31,32,33] // 国士の必要牌
        let pukao1 = [0,3,6,10,13,16,20,23,26,27,28,29,30,31,32,33] //プカオの必要牌
        let pukao2 = [0,3,6,11,14,17,19,22,25,27,28,29,30,31,32,33]
        let pukao3 = [1,4,7,9,12,15,20,23,26,27,28,29,30,31,32,33]
        let pukao4 = [1,4,7,11,14,17,18,21,24,27,28,29,30,31,32,33]
        let pukao5 = [2,5,8,9,12,15,19,22,25,27,28,29,30,31,32,33]
        let pukao6 = [2,5,8,10,13,16,18,21,24,27,28,29,30,31,32,33]
        
        let check = [sisan, pukao1, pukao2, pukao3, pukao4, pukao5, pukao6]
        for i in check{
            var x = 0
            for j in 0...33 {
                if i.contains(j) {
                    if a[j] > 1 {
                        x += 1
                    }
                }
                if !i.contains(j) {
                    if a[j] > 0 {
                        x += 1
                    }
                }
            }
            if x == 0 {
                var y = [Int]()
                for i in 0...33 {
                    if a[i] == 1 {
                        y.append(i)
                    }
                }
                mentsu.append(y)
                agari.append(mentsu)
                break
            }
        }
    }
    
    // ツーハーロンのチェック : 面子部分とヘッド部分に分離する
    func checkTuharon(a:[Int])->() {
        
        let tuha1 = [0,3,6,10,13,16,20,23,26]  // ツーハーロンの必要牌
        let tuha2 = [0,3,6,11,14,17,19,22,25]
        let tuha3 = [1,4,7,9,12,15,20,23,26]
        let tuha4 = [1,4,7,11,14,17,18,21,24]
        let tuha5 = [2,5,8,9,12,15,19,22,25]
        let tuha6 = [2,5,8,10,13,16,18,21,24]
        
        let tuharon = [tuha1, tuha2, tuha3, tuha4, tuha5, tuha6]
        for i in tuharon {
            var a5 = a  // 残りの面子を探すために使う
            var x = 0
            for j in 0...33 {
                if i.contains(j) {
                    if a[j] == 0 {
                        x += 1
                    } else {
                        a5[j] -= 1
                    }
                }
            }
            
            // ここからツーハーロンの可能性がある場合のみの処理
            if x == 0 {
                if !naki.isEmpty {
                    // 鳴きがある場合の処理
                    var ok = -1
                    for num in 0...33 {
                        if a5[num] == 2 {
                            mentsu.append([num, num])
                            ok = 0
                        }
                    }
                    if ok == 0 {
                        mentsu.append(naki[0])
                        mentsu.append(i)
                        agari.append(mentsu)
                    }
                } else {
                    // 鳴きがない場合の処理
                    print("ここにはきた")
                    print("a5 : \(a5)")
                    var ok = -1
                    var check = [Int]()
                    for i in 0...33 {
                        if a5[i] > 0 {
                            check.append(i)
                        }
                    }
                    
                    // 要素がある場所のバターンは(3,1,1) or (3,2) or (2,1,1,1)しかないので
                    // 要素の個数で場合分ける
                    if check.count == 2 {
                        if a5[check[0]] == 3, a5[check[1]] == 2 {
                            mentsu.append([check[1], check[1]])
                            mentsu.append([check[0], check[0], check[0]])
                            ok = 0
                        } else if a5[check[0]] == 2, a5[check[1]] == 3 {
                            mentsu.append([check[0], check[0]])
                            mentsu.append([check[1], check[1], check[1]])
                            ok = 0
                        }
                    } else  if check.count == 3 {
                        if a5[check[0]] == 3, a5[check[1]] == 1, a5[check[2]] == 1 {
                            if check[1] - check[0] == 1, check[2] - check[1] == 1 {
                                mentsu.append([check[0], check[0]])
                                mentsu.append([check[0], check[1], check[2]])
                                ok = 0
                            }
                        } else if a5[check[0]] == 1, a5[check[1]] == 3, a5[check[2]] == 1 {
                            if check[1] - check[0] == 1, check[2] - check[1] == 1 {
                                mentsu.append([check[1], check[1]])
                                mentsu.append([check[0], check[1], check[2]])
                                ok = 0
                            }
                        } else if a5[check[0]] == 1, a5[check[1]] == 1, a5[check[2]] == 3 {
                            if check[1] - check[0] == 1, check[2] - check[1] == 1 {
                                mentsu.append([check[2], check[2]])
                                mentsu.append([check[0], check[1], check[2]])
                                ok = 0
                            }
                        }
                    } else if check.count == 4 {
                        if a5[check[0]] == 2, a5[check[1]] == 1, a5[check[2]] == 1, a5[check[3]] == 1 {
                            if check[3] - check[2] == 1, check[2] - check[1] == 1 {
                                mentsu.append([check[0], check[0]])
                                mentsu.append([check[1], check[2], check[3]])
                                ok = 0
                            }
                        } else if a5[check[0]] == 1, a5[check[1]] == 1, a5[check[2]] == 1, a5[check[3]] == 2 {
                            if check[2] - check[1] == 1, check[1] - check[0] == 1 {
                                mentsu.append([check[3], check[3]])
                                mentsu.append([check[0], check[1], check[2]])
                                ok = 0
                            }
                        }
                    }
                    if ok == 0 {
                        mentsu.append(i)
                        agari.append(mentsu)
                        break
                    }
                }
            }
        }
    }
}
