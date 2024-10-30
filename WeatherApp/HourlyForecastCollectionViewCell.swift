//
//  HourlyForecastCollectionViewCell.swift
//  WeatherApp
//
//  Created by Layza Maria Rodrigues Carneiro on 23/09/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "HourlyForecast"
    
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
        
    }
    
    private func setConstraints() {
        
    }
}
