import Foundation

/// 生物を表すプロトコル
protocol Creature {
    var name: String { get }
    func talk() -> Void
}

/// 戦闘する生物を表すプロトコル
protocol BattleCreature: Creature {
    var hp: Int { set get }
    var level: Int { get }
    func attack(target: BattleCreature)
}

/// 村人クラス
class Villager: Creature {
    // 村人の名前を保存する変数
    var name: String
    
    // 初期処理
    init(name: String) {
        // 名前を設定する
        self.name = name
    }
    
    // 挨拶をするメソッド
    func talk() {
        print("こんにちは" + name + "です")
    }
    
}

/// 旅人クラス
class Traveller: BattleCreature {
    var name: String    // 旅人の名前を保存する変数
    var hp: Int     // HPを保存する変数
    var level: Int      // レベルを保存する変数
    
    // 初期処理
    init(name: String, hp: Int, level: Int) {
        // 名前、HP、レベルを設定する
        self.name = name
        self.hp = hp
        self.level = level
    }
    
    // 挨拶をするメソッド
    func talk() {
        print("旅人の" + name + "です")
    }
    
    // 攻撃をするメソッド
    func attack(target: BattleCreature) {
        print(name + "は" + target.name + "に10のダメージを与えた")
    }
}

/// 戦士クラス
class Warrior: Traveller {
    
    // 挨拶をするメソッド
    // オーバーライドして、旅人ではなく、戦士であると言うように変更
    override func talk() {
        print("戦士の" + name + "です")
    }
    
    // 攻撃をするメソッド
    // オーバーライドして、100ダメージ与えるように変更
    override func attack(target: BattleCreature) {
        print(name + "は" + target.name + "に100のダメージを与えた")
    }
}

/// スライムクラス
class Slime: BattleCreature {
    var name: String    // スライムの名前を保存する変数
    var hp: Int     // スライムのHPを保存する変数
    var level: Int      // スライムのレベルを保存する変数
    
    // 初期処理
    init(hp: Int, level: Int) {
        self.name = "スライム"
        self.hp = hp
        self.level = level
    }
    
    // 挨拶をするメソッド
    func talk() {
        print(name + "です")
    }
    
    // 攻撃をするメソッド
    func attack(target: BattleCreature) {
        print(name + "は" + target.name + "に10のダメージを与えた")
    }
}

/// キングスライム
class KingsLime: Slime {
    // 初期処理
    // オーバーライドして、名前をキングスライムに変更
    override init(hp: Int, level: Int) {
        super.init(hp: 100, level: 50)
        self.name = "キングスライム"
    }
    
    // 攻撃をするメソッド
    // オーバーライドして、50ダメージ与えるように変更
    override func attack(target: BattleCreature) {
        print(name + "は" + target.name + "に50のダメージを与えた")
    }
}
