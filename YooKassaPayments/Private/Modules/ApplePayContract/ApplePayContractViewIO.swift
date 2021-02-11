protocol ApplePayContractViewInput: class, NotificationPresenting {
    func setupViewModel(
        _ viewModel: ApplePayContractViewModel
    )
    func setSavePaymentMethodViewModel(
        _ savePaymentMethodViewModel: SavePaymentMethodViewModel
    )
}

protocol ApplePayContractViewOutput {
    func setupView()
    func didTapActionButton()
    func didTapTermsOfService(_ url: URL)
    func didTapOnSavePaymentMethod()
    func didChangeSavePaymentMethodState(
        _ state: Bool
    )
}
