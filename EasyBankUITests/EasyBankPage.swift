
import XCTest

class EasyBankPage: BaseClass {

    var onBoardingLoginButton : XCUIElement { app.buttons["onboarding.login"] }
    var onBoardingRegisterButton : XCUIElement { app.buttons["onboarding.register"] }

    var loginEmail : XCUIElement { app.textFields["login.email"] }
    var loginPassword : XCUIElement { app.secureTextFields["login.password"] }
    var loginSubmitButton : XCUIElement { app.buttons["login.submit"] }
    var loginErrorMessage : XCUIElement { app.staticTexts["login.error"] }

    var registerEmail : XCUIElement { app.textFields["registration.email"] }
    var registerPassword : XCUIElement { app.textFields["registration.password"] }
    var regiserShowPasswordButton : XCUIElement 
        { app.secureTextFields["registration.password"].buttons["hide"] }
    var registerPasswordRepeat : XCUIElement { app.textFields["registration.repeatPassword"] }
    var registerShowPasswordRepeatButton : XCUIElement 
        { app.secureTextFields["registration.repeatPassword"].buttons["hide"] }  
    var registerSubmitButton : XCUIElement { app.buttons["registration.submit"] }

    var sendMoneyButton : XCUIElement { app.buttons["home.sendMoney"] }
    var logoutButton : XCUIElement { app.buttons["home.logout"] }

    var logoutAlert: XCUIElement { app.alerts["Logging Out"] }
    var logoutConfirmation: XCUIElement { logoutAlert.buttons["Yes"] }
    
}
