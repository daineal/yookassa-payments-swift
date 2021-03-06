struct BankCardDataInputModuleInputData {
    let inputPanHint: String
    let inputPanPlaceholder: String
    let inputExpiryDateHint: String
    let inputExpiryDatePlaceholder: String
    let inputCvcHint: String
    let inputCvcPlaceholder: String
    let cardScanner: CardScanning?
    let isLoggingEnabled: Bool
}

protocol BankCardDataInputModuleInput: AnyObject {}

protocol BankCardDataInputModuleOutput: AnyObject {
    func bankCardDataInputModule(
        _ module: BankCardDataInputModuleInput,
        didSuccessValidateCardData cardData: CardData
    )
    func bankCardDataInputModule(
        _ module: BankCardDataInputModuleInput,
        didFailValidateCardData errors: [CardService.ValidationError]
    )
}
