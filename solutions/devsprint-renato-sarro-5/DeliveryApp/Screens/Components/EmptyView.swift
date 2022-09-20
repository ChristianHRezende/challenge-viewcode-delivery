//
//  EmptyView.swift
//  DeliveryApp
//
//  Created by Dio on 19/09/22.
//

import UIKit

final class EmptyView: UIView {

    private lazy var labelTitle: UILabel = {
        let label = UILabel()
        label.text = "Endereço não encontrado"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private lazy var labelSubtitle: UILabel = {
        let label = UILabel()
        label.text = "Procure por ruas com números e bairro utilizando o campo de busca"
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    //MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }

}

//MARK: - View code protocol

extension EmptyView: ViewCodeProtocol{

    func configViews() {
        translatesAutoresizingMaskIntoConstraints = false
    }

    func buildViews() {
        addSubviews([labelTitle, labelSubtitle])
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            labelTitle.bottomAnchor.constraint(equalTo: centerYAnchor, constant: -7.5),
            labelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            labelSubtitle.topAnchor.constraint(equalTo: centerYAnchor, constant: 7.5),
            labelSubtitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelSubtitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 53),
            labelSubtitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -54)
        ])
    }
}