//
//  TaskViewController.swift
//  EpitechEisenhower
//
//  Created by olejniczak on 04/04/2018.
//  Copyright © 2018 Epitech. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    //private var displayTasks = [TaskModel]()
}

/*extension TaskViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return displayTasks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                                      for: indexPath)
        if let cell = cell as? ResultCollectionViewCell {
            cell.setModel(model: displayTasks[indexPath.row])
        }
        return cell
    }
    
}*/

