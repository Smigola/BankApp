
import XCTest

class PageClasss: BaseClass {
    private let app = XCUIApplication()

    var onBoardingLoginButton : XCUIElement { app.buttons["onboarding.login"] }
    var onBoardingRegisterButton : XCUIElement { app.buttons["onboarding.register"] }

    var loginEmailTextField : XCUIElement { app.textFields["login.email"] }
    var loginPasswordTextField : XCUIElement { app.secureTextFields["login.password"] }
    var loginSubmitButton : XCUIElement { app.buttons["login.submit"] }
    var loginErrorMessage : XCUIElement { app.staticTexts["login.error"] }
    
}
