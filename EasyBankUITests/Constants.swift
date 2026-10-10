struct Constants {
    private static let faker = Faker()

    static let INVALID_EMAIL = "invalid_email"
    static var VALID_EMAIL: String {"test\(UUID().uuidString)@gmail.com"}
    static let PASSWORD = "Password1@"

    static let ERROR_MESSAGE_EMAIL = "badly formatted."
    static let ERROR_MESSAGE_INVALID_CREDENTIALS = "malformed or has expired."

}