//
//  TableViewController.swift
//  hehee
//
//  Created by nguyễn hữu đạt on 4/25/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var arr = Array(10...100)
    var newArr: [Int]?

    override func viewDidLoad() {
        super.viewDidLoad()
        newArr = getBubbleSort(array: arr)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (newArr ?? []).count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String((newArr ?? [])[indexPath.row])
        // Configure the cell...

        return cell
    }
    func getBubbleSort(array: [Int]) -> [Int] {
        var arrayNumber = array
        
        for i in 0...(arrayNumber.count - 2) {
            for j in (i + 1)...(arrayNumber.count - 1) {
                if (arrayNumber[i] < arrayNumber[j]) {
                    let swap = arrayNumber[i]
                    arrayNumber[i] = arrayNumber[j]
                    arrayNumber[j] = swap
                }
            }
        }
        return arrayNumber
    }
}
