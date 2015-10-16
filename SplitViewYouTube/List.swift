//
//  List.swift
//  SplitViewYouTube
//
//  Created by Tanmay Bakshi on 2015-10-09.
//  Copyright © 2015 Tanmay Bakshi. All rights reserved.
//

import UIKit

var currDetail = Detail()

class List: UITableViewController {
    
    var newData =   [
        "Tom Kenny":            [   "Spongebob Squarepants Movie",
                                    "Truth Or Square",
                                    "Sponge Out Of Water"],
        "Tom Cruise":           [   "Mission: Impossible",
                                    "Oblivion",
                                    "Top Gun"],
        "Brad Pitt":            [   "Fury",
                                    "Moneyball",
                                    "World War Z"],
        "Matt Damon":           [   "The Martian",
                                    "Good Will Hunting",
                                    "Interstellar"],
        "Leonardo DiCaprio":    [   "Titanic",
                                    "The Wolf of Wall Street",
                                    "Inception"],
        "Will Smith":           [   "I, Robot",
                                    "Shark Tale",
                                    "The Karate Kid"],
        "Angelina Jalie":       [   "Maleficent",
                                    "Kung Fu Panda",
                                    "Shark Tale"]
    ]
    
    override func viewDidLoad() {
        currList = self
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newData.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        var count = 0
        for (ind, _) in newData {
            if count == indexPath.row {
                cell.textLabel!.text = ind
                break
            }
            count++
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell = tableView.cellForRowAtIndexPath(indexPath)!
        currDetail.label1.text = newData[cell.textLabel!.text!]![0]
        currDetail.label2.text = newData[cell.textLabel!.text!]![1]
        currDetail.label3.text = newData[cell.textLabel!.text!]![2]
    }
    
}
