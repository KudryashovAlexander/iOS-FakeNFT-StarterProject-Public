//
//  AlertButton.swift
//  FakeNFT
//
//  Created by Artem Novikov on 10.10.2023.
//

import UIKit

// MARK: - AlertButton
struct AlertButton<T> {
    let text: String
    let style: UIAlertAction.Style
    let completion: (T) -> Void
    let isPreferredAction: Bool

    init(
        text: String,
        style: UIAlertAction.Style,
        completion: @escaping (T) -> Void,
        isPreferredAction: Bool = false
    ) {
        self.text = text
        self.style = style
        self.completion = completion
        self.isPreferredAction = isPreferredAction
    }
}
