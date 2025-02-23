//
//  WebViewModel.swift
//  FakeNFT
//
//  Created by Artem Novikov on 09.10.2023.
//

import Foundation

// MARK: - WebViewModelProtocol
protocol WebViewModelProtocol: AnyObject {
    var onProgressChange: ((Float) -> Void)? { get set }
    var onProgressHide: ((Bool) -> Void)? { get set }

    func didUpdateProgressValue(_ newValue: Double)
}

// MARK: - WebViewModel
final class WebViewModel: WebViewModelProtocol {

    // MARK: - Public properties
    var onProgressChange: ((Float) -> Void)?
    var onProgressHide: ((Bool) -> Void)?

    // MARK: - Public Methods
    func didUpdateProgressValue(_ newValue: Double) {
        let newProgressValue = Float(newValue)
        onProgressChange?(newProgressValue)
        onProgressHide?(shouldHideProgress(for: newProgressValue))
    }

    // MARK: - Private Methods
    private func shouldHideProgress(for value: Float) -> Bool {
        abs(value - 1.0) <= 0.0001
    }

}
