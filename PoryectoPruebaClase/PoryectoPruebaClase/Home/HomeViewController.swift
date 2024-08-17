//
//  HomeViewController.swift
//  PoryectoPruebaClase
//
//  Created by LABORATORIO MAC UAM on 17/8/24.
//

import UIKit

class HomeViewController: UIViewController {

    let myCustomModel: [MyCustomStruct] = [
    
        MyCustomStruct(myImage: UIImage(named: "image1")!, myLabel: "image1"),
        MyCustomStruct(myImage: UIImage(named: "image2")!, myLabel: "image2"),
        MyCustomStruct(myImage: UIImage(named: "image3")!, myLabel: "image3"),
        MyCustomStruct(myImage: UIImage(named: "image4")!, myLabel: "image4"),
    ]
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myCollectionView.register(UINib(nibName: "HomeCollectionView", bundle: <#T##Bundle?#>))
    }

    
    @IBAction func buttomBackHome(_ sender: Any) {

        self.navigationController?.popViewController(animated: true)    }
    
}


extension HomeViewController: UICollectionViewDataSource,
                              UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myCustomModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        
        cell.config(data: myCustomModel(indexPath.row))
        return cell
    }
    
    
}
