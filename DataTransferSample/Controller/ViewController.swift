//
//  ViewController.swift
//  DataTransferSample
//
//  Created by Muramoto & Co. on 2021/04/03.
//

import UIKit

class ViewController: UIViewController, CatchProtocol {
    
    /// 次の画面に渡す文字を入力するTextField
    @IBOutlet weak var textField: UITextField!
    /// TextFieldに入力されたTextを次の画面に渡しNextViewに画面遷移をするButton
    @IBOutlet weak var passByValue: UIButton!
    /// ValueReturnに画面遷移をするButton
    @IBOutlet weak var valueReturn: UIButton!
    /// ValueReturnから受け取ったTextを表示するLabel
    @IBOutlet weak var displayCatchData: UILabel!
    /// 受け取ったTextを入れる変数
    var reception = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passByValue.settingButton()
        valueReturn.settingButton()
    }
    
    // 値を次の画面に渡す
    @IBAction func passByValue(_ sender: Any) {
        performSegue(withIdentifier: "toNext", sender: nil)
    }
    
    // ValueReturnVCに画面遷移
    @IBAction func valueReturnPage(_ sender: Any) {
        performSegue(withIdentifier: "toValueReturn", sender: nil)
    }
    
    func catchData(backString: String) {
        reception = backString
        print(reception)
        displayCatchData.text = reception
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toNext") {
            let nextView = segue.destination as! NextViewController
            // TextFieldからtextを取得
            nextView.argumentString = textField.text!
        } else if (segue.identifier == "toValueReturn") {
            let valueReturnView = segue.destination as! ValueReturnViewController
            valueReturnView.delegate = self
        }
    }
}

