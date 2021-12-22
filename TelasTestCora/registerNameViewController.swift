//
//  registerNameViewController.swift
//  TelasTestCora
//
//  Created by Cora on 21/12/21.
//

import UIKit

class registerNameViewController: UIViewController, UITextFieldDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // seria para decorar a ordem das telinhas? memorizar as propriedades pra nao recarregar tudo de novo
        textField?.delegate = self
      }
    
    @IBAction func returnPage() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet var button: UIButton?
    @IBOutlet var textField: UITextField?
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var novoTexto = textField.text ?? ""
        novoTexto = novoTexto + string
        novoTexto = novoTexto.replacingOccurrences(of: " ", with: "")
        
        if novoTexto.count > 0 {
            if novoTexto.count == 1 && string.isEmpty {
                button?.isEnabled = false
            } else {
                button?.isEnabled = true
            }
            } else {
                button?.isEnabled = false
            }
        return true
        }
    }
    

