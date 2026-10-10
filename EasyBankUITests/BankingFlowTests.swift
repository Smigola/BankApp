import XCTest

final class BankingFlowTests: BaseClass {
    let bankingSteps = EasyBankSteps()

    func testInvalidEmailFormat() {
        bankingSteps
            .openLoginPage()
            .enterEmail(Constants.INVALID_EMAIL)
            .enterPassword(Constants.PASSWORD)
            .loginAttempt()
            .verifyErrorMessage(Constants.ERROR_MESSAGE_EMAIL)
    }
}
