//
//  MenuViewController.swift
//  testTaskPizza
//
//  Created by Андрей Банин on 13.1.24..
//

import UIKit

//MARK: - MenuViewController

final class MenuViewController: UIViewController {
    
    //MARK: Properties
    
    private lazy var tableView: UITableView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .clear
        $0.dataSource = self
        $0.delegate = self
        $0.separatorStyle = .none
        
        $0.register(CustomHeader.self, forHeaderFooterViewReuseIdentifier: CustomHeader.reuseID)
        
        $0.register(EventsCell.self, forCellReuseIdentifier: EventsCell.reuseID)
        $0.register(MenuSectionsHeader.self, forHeaderFooterViewReuseIdentifier: MenuSectionsHeader.reuseID)
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "defaultID")
        $0.showsVerticalScrollIndicator = false
        return $0
    }(UITableView(frame: .zero, style: .plain))
    
    
    //MARK: Initial
    
    
    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .mainBackgroundColor
        setupNavBarApperance()
        setupUI()
    }
    
    //MARK: Private methods
    
    private func setupUI() {
        self.view.addSubview(self.tableView)
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 0),
            self.tableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: 0),
        ])
    }
    
    private func setupNavBarApperance() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = .mainBackgroundColor
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        navBarAppearance.configureWithTransparentBackground()
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
    }
}

//MARK: - UITableViewDataSource

extension MenuViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 30
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard 
            let events = tableView.dequeueReusableCell(withIdentifier: EventsCell.reuseID, for: indexPath) as? EventsCell
        else { return UITableViewCell() }
        
        switch indexPath.section {
        case 0:
            return events
        case 1:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
}

//MARK: - UITableViewDelegate

extension MenuViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard 
            let menuSection = tableView.dequeueReusableHeaderFooterView(withIdentifier: MenuSectionsHeader.reuseID) as? MenuSectionsHeader,
            let headerOne = tableView.dequeueReusableHeaderFooterView(withIdentifier: CustomHeader.reuseID) as? CustomHeader
        else { return nil }
        switch section {
        case 0 :
//            let size = CGRect(x: 0, y: 0, width: 390, height: 1)
//            let header = UITableViewHeaderFooterView()
//            let view = UIView() // (frame: size)
//            view.backgroundColor = .clear
//            view.translatesAutoresizingMaskIntoConstraints = false
//            view.heightAnchor.constraint(equalToConstant: 1).isActive = true
//            view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
//            view.topAnchor.constraint(equalTo: header.contentView.topAnchor).isActive = true
////
//            header.contentView.addSubview(view)
//            return header
            return headerOne
        case 1:
            return menuSection
        default :
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 1
        case 1:
            return 48
        default:
            return 0
        }
    }
}

