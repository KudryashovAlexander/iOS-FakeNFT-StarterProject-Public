//
//  AlertWithTextFieldModel.swift
//  FakeNFT
//
//  Created by Artem Novikov on 30.10.2023.
//

// MARK: - AlertWithTextFieldModel
struct AlertWithTextFieldModel {

    let title: String
    let message: String?
    let textField: AlertTextField
    let okButton: AlertButton<String?>
    let cancelButton: AlertButton<Void>

    static func changePhotoAlert(
        okCompletion: @escaping (String?) -> Void
    ) -> AlertWithTextFieldModel {
        AlertWithTextFieldModel(
            title: L.Profile.Alert.Avatar.title,
            message: L.Profile.Alert.Avatar.subtitle,
            textField: AlertTextField(placeholder: L.Profile.Alert.Avatar.placeholder),
            okButton: AlertButton(
                text: L.Alert.ok,
                style: .default,
                completion: okCompletion
            ),
            cancelButton: AlertButton(
                text: L.Alert.close,
                style: .destructive,
                completion: { }
            )
        )
    }

}
