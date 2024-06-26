//
//  UIView+Extensions.swift
//  Weather App
//
//  Created by Leonardo de Andrade Veras on 26/06/24.
//

import Foundation
import UIKit

extension UIView {
    func setContraintsToParents(_ parent: UIView){
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor)
        ])

    }
}
