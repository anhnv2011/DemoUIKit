//
//  Validation.swift
//  DemoValidateTextField
//
//  Created by MAC on 7/12/22.
//

import Foundation
class Validation {
    public func validateName(name: String) ->Bool {
          // Length be 18 characters max and 3 characters minimum, you can always modify.
          let nameRegex = "^\\w{3,18}$"
          let trimmedString = name.trimmingCharacters(in: .whitespaces)
          let validateName = NSPredicate(format: "SELF MATCHES %@", nameRegex)
          let isValidateName = validateName.evaluate(with: trimmedString)
          return isValidateName
       }
       public func validaPhoneNumber(phoneNumber: String) -> Bool {
//          let phoneNumberRegex = "^[6-9]\\d{9}$"
          let phoneNumberRegex = "[0-9]\\d{3}$" //0-9 and more than 3 number
          let trimmedString = phoneNumber.trimmingCharacters(in: .whitespaces)
          let validatePhone = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
          let isValidPhone = validatePhone.evaluate(with: trimmedString)
          return isValidPhone
       }
       public func validateEmailId(emailID: String) -> Bool {
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
          let trimmedString = emailID.trimmingCharacters(in: .whitespaces)
          let validateEmail = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
          let isValidateEmail = validateEmail.evaluate(with: trimmedString)
          return isValidateEmail
       }
       public func validatePassword(password: String) -> Bool {
          //Minimum 8 characters at least 1 Alphabet and 1 Number:
          let passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
          let trimmedString = password.trimmingCharacters(in: .whitespaces)
          let validatePassword = NSPredicate(format:"SELF MATCHES %@", passRegEx)
          let isvalidatePass = validatePassword.evaluate(with: trimmedString)
          return isvalidatePass
       }
       public func validateAnyOtherTextField(otherField: String) -> Bool {
          let otherRegexString = "Your regex String"
          let trimmedString = otherField.trimmingCharacters(in: .whitespaces)
          let validateOtherString = NSPredicate(format: "SELF MATCHES %@", otherRegexString)
          let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
          return isValidateOtherString
       }
}
