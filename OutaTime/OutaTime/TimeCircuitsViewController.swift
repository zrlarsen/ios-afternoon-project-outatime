//
//  TimeCircuitsViewController.swift
//  OutaTime
//
//  Created by Zack Larsen on 11/13/19.
//  Copyright © 2019 Zack Larsen. All rights reserved.
//

import UIKit

class TimeCircuitsViewController: UIViewController {
    @IBOutlet weak var destinationTimeLabel: UILabel!
    
    @IBOutlet weak var presentTimeLabel: UILabel!
    
    @IBOutlet weak var lastTimeDepartedLabel: UILabel!
    
    
    @IBOutlet weak var speedLabel: UILabel!
    
    private var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
        
    }()
    
    func presentTime(){
        presentTimeLabel.text = dateFormatter.string(from:Date())
        return
    }
    
    var speed = 0
    
    func speedL(){
        speedLabel.text = ("\(speed) MPH")
        return
    }
    
    func lastTimeDeparted() {
        lastTimeDepartedLabel.text = "___ __ ____"
        return
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func travelBackTapped(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension TimeCircuitsViewController: DatePickerDelegate {
    func destinationDateWasChosen(date: Date) {
        
    }
}
