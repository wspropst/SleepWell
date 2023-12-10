//
//  HealthStore.swift
//  SleepWell Watch App
//
//  Created by Liam Propst on 12/9/23.
//

import Foundation
import HealthKit

class HealthStore {
    var healthStore: HKHealthStore?

    init() {
        if HKHealthStore.isHealthDataAvailable() {
            healthStore = HKHealthStore()
        }
    }

    func requestAuthorization(completion: @escaping (Bool, Error?) -> Void) {
        guard let heartRateType = HKQuantityType.quantityType(forIdentifier: .heartRate),
              let sleepAnalysisType = HKObjectType.categoryType(forIdentifier: .sleepAnalysis) else {
            // Handle the error here if these types are not available
            return
        }

        let readData = Set([heartRateType, sleepAnalysisType])
        
        healthStore?.requestAuthorization(toShare: [], read: readData) { (success, error) in
            completion(success, error)
        }
    }

    // Additional functions for querying specific data types from HealthKit can be added here.
}
