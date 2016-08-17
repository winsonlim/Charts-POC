//
//  ChartCell.swift
//  ChartsPOC
//
//  Created by Winson Lim on 17/8/16.
//  Copyright © 2016 Tigerspike. All rights reserved.
//

import UIKit
import Charts

class ChartCell: UITableViewCell {
    
    @IBOutlet weak var barChart: BarChartView!

    func loadData() {
        var yVals = [ChartDataEntry]()
        
        for i in 1...100 {
            yVals.append(BarChartDataEntry(value: Double(arc4random_uniform(UInt32(i))), xIndex: i))
        }
        
        let set1 = BarChartDataSet(yVals: yVals, label: "Dataset")
        
        set1.colors = ChartColorTemplates.vordiplom();
        set1.drawValuesEnabled = false;
        
        let dataSets = [set1]
        
        let data = BarChartData(xVals: yVals, dataSets: dataSets)
        
        barChart.data = data
        barChart.setNeedsDisplay()
    }
}
