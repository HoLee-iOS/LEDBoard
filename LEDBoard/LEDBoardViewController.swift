//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by 이현호 on 2022/07/06.
//

import UIKit

class LEDBoardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var LEDLabel: UILabel!
    
    @IBOutlet var buttonList: [UIButton]!
    
    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextField.delegate = self
        
        designTextField()
        
        designButton(sendButton, buttonTitle: "보내기", highlightedTitle: "뻥인뎅", buttonBackgroundColor: .gray, hbgColor: .green)
        designButton(textColorButton, buttonTitle: "눌러봐", highlightedTitle: "짜쟌", buttonBackgroundColor: .brown, hbgColor: .cyan)
        
        studyOutletCollection()
    
        
    }
    
    //리턴키로 키보드 내리기
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.borderStyle = .none
        userTextField.textColor = .blue
    }
    
    // buttonOutletVariableName: 외부 매개변수, Argument Label
    // buttonName: 내부 매개변수, Parameter Name
    // _ : 와일드 카드 식별자
    func designButton(_ buttonName: UIButton, buttonTitle: String, highlightedTitle: String, buttonBackgroundColor bgColor: UIColor, hbgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedTitle, for: .highlighted)
        buttonName.layer.cornerRadius = 10
        buttonName.layer.borderColor = UIColor.darkGray.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(bgColor, for: .normal)
        buttonName.setTitleColor(hbgColor, for: .highlighted)
    }
    
    func studyOutletCollection() {
        //1. 반복문
        let buttonArray = [sendButton, textColorButton]
        
        for item in buttonArray {
            item?.backgroundColor = .blue
            item?.layer.cornerRadius = 2
        }
        
        //2. 아웃렛 컬렉션
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 10
        }
    }

    @IBAction func didEndOnExit(_ sender: Any) {
    }
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        
        LEDLabel.text = userTextField.text
    
    }
    
    @IBAction func textColorButtonClicked(_ sender: UIButton) {
        
        LEDLabel.textColor = .green
        
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        
        //키보드 내리기
        view.endEditing(true)
    
        
    }
    
    @IBAction func exampleButton1(_ sender: UIButton) {
        
        view.endEditing(true)
        
    }
    
    //연결관계를 다 끊어보고 Any로 연결해보기
    
    @IBAction func keyboardEli(_ sender: Any) {
        
        view.backgroundColor = .cyan
        view.endEditing(true)
        
    }
    
    
    //subview 숨기기
    @IBAction func hideSubView(_ sender: Any) {
        
        if subView.isHidden == false {
            subView.isHidden = true
        } else {
            subView.isHidden = false
        }
        
    }
    
}
