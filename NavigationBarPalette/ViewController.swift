//
//  ViewController.swift
//  NavigationBarPalette
//
//  Created by Alexander Chekel on 05.09.2023.
//

import UIKit

class ViewController: UIViewController {
    private lazy var palette = NavigationBarPalette(contentView: makeWeekdaysStackView())

    override func viewDidLoad() {
        super.viewDidLoad()

        palette.preferredHeight = 19 // Approximately 15 pts for the line height + 4 pt margin on top and bottom

        navigationItem.title = "Title"
        navigationItem._bottomPalette = palette
    }

    private func makeWeekdaysStackView() -> UIStackView {
        let weekdays = [
            (abbreviation: "SUN", isWeekend: true),
            (abbreviation: "MON", isWeekend: false),
            (abbreviation: "TUE", isWeekend: false),
            (abbreviation: "WED", isWeekend: false),
            (abbreviation: "THU", isWeekend: false),
            (abbreviation: "FRI", isWeekend: false),
            (abbreviation: "SAT", isWeekend: true)
        ]

        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        weekdays.forEach { weekday in
            let label = UILabel()
            label.text = weekday.abbreviation
            label.font = UIFont.systemFont(ofSize: 12)
            label.textAlignment = .center
            label.textColor = weekday.isWeekend ? .secondaryLabel : .label
            stackView.addArrangedSubview(label)
        }

        return stackView
    }

    @IBAction private func switchValueChanged(sender: UISwitch) {
        palette.isPinned = sender.isOn
    }
}

