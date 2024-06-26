//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Leonardo de Andrade Veras on 22/06/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let indentifier:  String = "HourlyForecastCollectionViewCell"
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [HourLabel,
                                                      iconImageView,
                                                      temperatureLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.isLayoutMarginsRelativeArrangement = true //Indica que o o stack view vai poder utilizar a directionalLayoutMargins
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.contrastColor?.cgColor
        stackView.layer.cornerRadius = 20
        return stackView
    }()
    
    private lazy var HourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "13:00"
        label.textAlignment = .center
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        
        return label
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "14°C"
        label.textAlignment = .center
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        setupView()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
    }
    
    private func setConstraints() {
        stackView.setContraintsToParents(contentView)
        NSLayoutConstraint.activate([
            iconImageView.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
    
    
}
