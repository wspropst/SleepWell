//
//  SleedDataManager.swift
//  SleepWell Watch App
//
//  Created by Liam Propst on 11/12/23.
//

import Foundation

class SleepDataManager {
    func saveSleepData(sleepDuration: Double) {
        UserDefaults.standard.set(sleepDuration, forKey: "LastSleepDuration")
    }

    func getSleepData() -> Double {
        return UserDefaults.standard.double(forKey: "LastSleepDuration")
    }
}

