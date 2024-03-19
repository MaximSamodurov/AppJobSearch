//
//  EnterAccountViewModel.swift
//  App Job Search
//
//  Created by Fixed on 16.03.24.
//

import Foundation
#warning("Можно ли использовать UIkit в ViewModel, или как передать цвет")
import UIKit

protocol EnterAccountViewModelDelegate: AnyObject {
    func pushToAuthView()
}


class EnterAccountViewModel {
    
    weak var enterAccountViewModelDelegate: EnterAccountViewModelDelegate?
    
    var emailText: Observable<String> = Observable("")
    var continiueButtonStatus: Observable<Bool> = Observable(false)
    var emailValidate: Observable<CGColor> = Observable(#colorLiteral(red: 0.1231869555, green: 0.128664036, blue: 0.1262477341, alpha: 1))
    var emailValidateMessage: Observable<String> = Observable("")
    
    func continiueButtonPressed(emailText: String) {
        self.emailText.value = emailText
    }
    
    func isValidEmail(emailValidation: String) {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if emailPred.evaluate(with: emailValidation) == true {
            print("go to next screen view")
            enterAccountViewModelDelegate?.pushToAuthView()
        } else {
            self.emailValidate.value = #colorLiteral(red: 1, green: 0, blue: 0.009361755543, alpha: 1)
            self.emailValidateMessage.value = "Вы ввели неверный e-mail"
        }
    }
}
