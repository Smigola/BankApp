import XCTest

final class BankingFlowTests: BaseClass {
    let bankingSteps = EasyBankSteps()

    func testInvalidEmailFormat() {
        bankingSteps
            .openLoginPage()
            .enterLoginEmail(Constants.INVALID_EMAIL)
            .enterLoginPassword(Constants.PASSWORD)
            .loginAttempt()
            .verifyErrorMessage(Constants.ERROR_MESSAGE_EMAIL)
    }

    func testInvalidCredentials() {
        bankingSteps
            .openLoginPage()
            .enterLoginEmail(Constants.VALID_EMAIL)
            .enterLoginPassword(Constants.PASSWORD)
            .loginAttempt()
            .verifyErrorMessage(Constants.ERROR_MESSAGE_INVALID_CREDENTIALS)
    }

    func testRegisterLoginFlow() {
        bankingSteps
            .openRegisterPage()
            .enterRegisterEmail(Constants.VALID_EMAIL)
            .enterRegisterPassword(Constants.PASSWORD)
            .enterRegisterPasswordRepeat(Constants.PASSWORD)
            .registerAttempt()
            .validateHomePage()

        bankingSteps
            .logout()
            .openLoginPage()
            .enterLoginEmail(Constants.VALID_EMAIL)
            .enterLoginPassword(Constants.PASSWORD)
            .loginAttempt()
            .validateHomePage()
    }
}
