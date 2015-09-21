//
//  ViewController.swift
//  Word Reverse
//
//  Created by Rosario Tarabocchia on 9/21/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var txtName: UITextField!
    
    
    @IBOutlet weak var lblReverseWord: UILabel!
    
    var wordData = ""
    var reversedWord = ""
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func btnReverse(sender: UIButton) {
        
        reverseTheWord()
        
    }
    
    
    
    @IBAction func btnClear(sender: UIButton) {
        
        reset()
    }
    
    
    func reverseTheWord(){
        
        wordData = txtName.text!
        reversedWord = String(wordData.characters.reverse())
        hideKeyboard()
        printLabel()
        
    
    }
    
    func reset(){
        
        txtName.text = ""
        lblReverseWord.text = "WORD"
        
        
        hideKeyboard()
        
        
    }
    
    func printLabel(){
        
        lblReverseWord.text = "\(reversedWord.lowercaseString)"
        
        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       hideKeyboard()
    }
    
    
    
    func hideKeyboard(){
        
        txtName.resignFirstResponder()
        
       
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  


}

