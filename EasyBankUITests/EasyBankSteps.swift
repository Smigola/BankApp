import XCTest

final class EasyBankSteps {
    private let bankPage = EasyBankPage()

    func openLoginPage() -> EasyBankSteps {
        bankPage.onBoardingLoginButton.tap()
        return self
    }

    func openRegisterPage() -> EasyBankSteps {
        bankPage.onBoardingRegisterButton.tap()
        return self
    }

    func loginAttempt() -> EasyBankSteps {
        bankPage.loginSubmitButton.tap()
        return self
    }

    func registerAttempt() -> EasyBankSteps {
        bankPage.registerSubmitButton.tap()
        return self
    }

    func enterLoginEmail(_ email: String) -> EasyBankSteps {
        bankPage.loginEmail.tap()
        bankPage.loginEmail.typeText(email)
        return self
    }

    func enterLoginPassword(_ password: String) -> EasyBankSteps {
        bankPage.loginPassword.tap()
        bankPage.loginPassword.typeText(password)
        return self
    }

    func enterRegisterEmail(_ email: String) -> EasyBankSteps {
        bankPage.registerEmail.tap()
        bankPage.registerEmail.typeText(email)
        return self
    }

    func enterRegisterPassword(_ password: String) -> EasyBankSteps {
        bankPage.regiserShowPasswordButton.tap()
        bankPage.registerPassword.tap()
        bankPage.registerPassword.typeText(password)
        return self
    }

    func enterRegisterPasswordRepeat(_ password: String) -> EasyBankSteps {
        bankPage.registerShowPasswordRepeatButton.tap()
        bankPage.registerPasswordRepeat.tap()
        bankPage.registerPasswordRepeat.typeText(password)
        return self
    }

    func logout() -> EasyBankSteps {
        bankPage.logoutButton.tap()
        bankPage.logoutConfirmation.tap()
        return self
    }

    func verifyErrorMessage(_ message: String) -> EasyBankSteps {
        XCTAssertTrue(bankPage.loginErrorMessage.label.contains(message))
        return self
    }

    func validateHomePage() -> EasyBankSteps {
        XCTAssertTrue(bankPage.sendMoneyButton.exists)
        XCTAssertTrue(bankPage.logoutButton.exists)
        return self
    }

}