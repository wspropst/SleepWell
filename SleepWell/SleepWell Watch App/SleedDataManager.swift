//
//  SleedDataManager.swift
//  SleepWell Watch App
//
//  Created by Liam Propst on 11/12/23.
//

import Foundation

class SleepDataManager {
    // Store sleep data
    func saveSleepData(sleepData: [String: Any], forKey key: String) {
        UserDefaults.standard.set(sleepData, forKey: key)
    }

    // Retrieve sleep data
    func getSleepData(forKey key: String) -> [String: Any]? {
        return UserDefaults.standard.dictionary(forKey: key)
    }

    // Store heart rate data
    func saveHeartRateData(heartRateData: [String: Any], forKey key: String) {
        UserDefaults.standard.set(heartRateData, forKey: key)
    }

    // Retrieve heart rate data
    func getHeartRateData(forKey key: String) -> [String: Any]? {
        return UserDefaults.standard.dictionary(forKey: key)
    }

    // Store chart data (assuming charts are stored as images or serialized data)
    func saveChartData(chartData: Data, forKey key: String) {
        UserDefaults.standard.set(chartData, forKey: key)
    }

    // Retrieve chart data
    func getChartData(forKey key: String) -> Data? {
        return UserDefaults.standard.data(forKey: key)
    }

    
}


