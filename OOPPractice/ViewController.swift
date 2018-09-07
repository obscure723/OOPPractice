import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 村人を具現化（インスタンス化）する時に「村人A」、「村人B」というそれぞれ名前を設定する
        let 村人A = Villager(name: "村人A")
        let 村人B = Villager(name: "村人B")
        
        // 上で作ったそれぞれの村人が話す
        村人A.talk()
        村人B.talk()
        
        // 旅人に「太郎」という名前をつけて具現化（インスタンス化）する
        let 旅人 = Traveller(name: "太郎", hp: 100, level: 1)
        
        // 旅人が話す
        旅人.talk()
        
        // スライムを具現化（インスタンス化）する
        let スライム = Slime(hp: 50, level: 2)
        スライム.talk()
        
        // キングスライムを具現化（インスタンス化）する
        let キングスライム = KingsLime(hp: 100, level: 30)
        キングスライム.talk()
        
        // 旅人がスライムに攻撃する
        旅人.attack(target: スライム)
        
        // 旅人がキングスライムに攻撃する
        旅人.attack(target: キングスライム)
        
        // 戦士に「太郎」という名前をつけて具現化（インスタンス化）する
        let 戦士 = Warrior(name: "太郎", hp: 200, level: 50)
        
        // 戦士が話す
        戦士.talk()
        
        // 戦士がスライムに攻撃する
        戦士.attack(target: スライム)
        
        // 戦士がキングスライムに攻撃する
        戦士.attack(target: キングスライム)
    }

}

