//
//  ViewController.swift
//  tableViewey
//
//  Created by Sunghyup Kim on 2020/06/07.
//  Copyright © 2020 SunghyupKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
              
    
    let dogs = [
        Dog(name: "멍지", breed: "간장푸들", sex: "여"),
        Dog(name: "쿠키", breed: "장모치와와", sex: "남"),
        Dog(name: "아롱이", breed: "말티즈", sex: "남"),
        Dog(name: "뺀질이", breed: "블랙푸들", sex: "여"),
        Dog(name: "후추", breed: "실버푸들", sex: "여"),
        Dog(name: "우리", breed: "말티즈", sex: "여"),
        Dog(name: "다니", breed: "비숑", sex: "여"),
        Dog(name: "마늘쫑", breed: "???", sex: "????"),
        Dog(name: "구찌", breed: "비숑", sex: "여")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }


}

//MARK: - TableView DataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "DogID", for: indexPath) as! CustomTableViewCell
        
        cell.profileName.text = "\(dogs[indexPath.row].name)"
        cell.profileImage.image = UIImage(named: "\(dogs[indexPath.row].name)")
        cell.profileBreed.text = "\(dogs[indexPath.row].breed)"
        cell.sexImage.image = UIImage(named: "\(dogs[indexPath.row].sex)")
        
        cell.setupCellUI()
        
        return cell
    }
    

    
}

//MARK: - TableView Delegate Methods

extension ViewController: UITableViewDelegate {
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(dogs[indexPath.row].name)")
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


