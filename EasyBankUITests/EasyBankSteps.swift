import XCTest

final class EasyBankSteps {
    private let bankPage = EasyBankPage()

    func openLoginPage() -> EasyBankSteps {
        bankPage.onBoardingLoginButton.tap()
        return self
    }

    func loginAttempt() -> EasyBankSteps {
        bankPage.loginSubmitButton.tap()
        return self
    }

    func enterEmail(_ email: String) -> EasyBankSteps {
        bankPage.loginEmailTextField.tap()
        bankPage.loginEmailTextField.typeText(email)
        return self
    }

    func enterPassword(_ password: String) -> EasyBankSteps {
        bankPage.loginPasswordTextField.tap()
        bankPage.loginPasswordTextField.typeText(password)
        return self
    }

    func verifyErrorMessage(_ message: String) -> EasyBankSteps {
        XCTAssertTrue(bankPage.loginErrorMessage.label.contains(message))
        return self
    }

}