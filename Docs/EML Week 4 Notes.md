# Week 4 Notes and Findings

After the last chain of emails, I really like what Kurz was talking about with the sleed data and sleep analysis app. I think him and I being passionate about that would also help drive this project forward and bring interesting findings once we begin testing with real data from us. 

Here are some findings regaurding what data is available from the apple watch and how it can be used to measure sleep quality:

## Raw Metrics Available and Relevant:

### Accelerometer Data:
- **What it is**: The accelerometer measures the rate of acceleration of the Apple Watch. It can detect when and how the watch (and thus the wearer's wrist) is moving.
- **Implications for Sleep**:
  - **Stillness**: Extended periods of little to no movement can indicate deep sleep or sleep onset.
  - **Restlessness**: Frequent or significant movements might indicate the user is tossing and turning, which can be a sign of disturbed sleep or lighter sleep stages.

### Heart Rate:
- **What it is**: The Apple Watch uses photoplethysmography to measure heart rate. This involves using green LED lights paired with light-sensitive photodiodes to detect blood flow in the wrist.
- **Implications for Sleep**:
  - **Sleep Stages**: Heart rate typically drops during deeper sleep stages. A consistent, lowered heart rate can indicate deep or restorative sleep.
  - **Disturbances**: Sudden spikes in heart rate can indicate nightmares, sleep disturbances, or even conditions like sleep apnea.

### Heart Rate Variability (HRV):
- **What it is**: HRV measures the variation in time between each heartbeat. It's an indicator of the nervous system's activity and overall stress and recovery levels.
- **Implications for Sleep**:
  - **Recovery**: Higher HRV during sleep can indicate good recovery and a balanced autonomic nervous system.
  - **Stress**: A consistently low HRV during sleep might indicate stress, overtraining, or poor recovery.

### Noise:
- **What it is**: The Apple Watch can measure ambient noise levels using its built-in microphone.
- **Implications for Sleep**:
  - **Sleep Disturbances**: High noise levels can wake a person or prevent them from entering deeper sleep stages.
  - **Sleep Environment**: Chronic exposure to high noise levels at night can be a sign that the user needs to improve their sleep environment.

### Blood Oxygen Levels:
- **What it is**: Newer Apple Watch models use red and infrared light to measure the oxygen saturation of the blood, known as SpO2.
- **Implications for Sleep**:
  - **Sleep Apnea**: Consistently low blood oxygen levels during sleep can be a sign of sleep apnea, a condition where breathing stops and starts during sleep.
  - **Overall Health**: While not directly a sleep metric, blood oxygen levels can provide insights into overall respiratory and circulatory health.

## Derived Metrics and Insights:

### Sleep Duration:
- **How it's Derived**: By estimating when a user falls asleep and wakes up using movement and heart rate data.
- **Implications**: Sleep duration is a fundamental metric. Both short (insufficient) and prolonged (excessive) sleep durations can be associated with health issues.

### Sleep Stages:
- **How it's Derived**: Analyzing heart rate, HRV, and movement data can help estimate when a user is in light, deep, or REM sleep.
- **Implications**: Different sleep stages have different restorative functions. For example, deep sleep is crucial for physical recovery, while REM sleep is essential for cognitive functions and memory.

### Restlessness:
- **How it's Derived**: By analyzing frequent movements or heart rate spikes during the night.
- **Implications**: A restless night can indicate various issues, from stress to an uncomfortable sleep environment or underlying health conditions.

### Sleep Consistency:
- **How it's Derived**: By tracking bedtimes and wake times over days.
- **Implications**: Consistency in sleep schedules is linked to better sleep quality and overall health. Irregular sleep patterns can disrupt the body's internal clock, leading to sleep disorders.

### Recovery Score:
- **How it's Derived**: Using HRV and resting heart rate data from the sleep period.
- **Implications**: A high recovery score indicates the body is well-rested and ready for physical and mental challenges. A low score might suggest the need for rest or recovery activities.

---

## Xcode Introduction

Here is what I’ve been able to do so far within Xcode, which is how you develop for apple products. The language used is Swift which I am not too familiar with but have taken a class on it last year.

Before accessing or writing any data, you must request permission from the user. Apple’s rules not mine.

```swift
import HealthKit

let healthStore = HKHealthStore()

// Specify the data types you want to read
let readDataTypes: Set<HKObjectType> = [
    HKObjectType.quantityType(forIdentifier: .heartRate)!,
    HKObjectType.quantityType(forIdentifier: .heartRateVariabilitySDNN)!,
    // ... add other data types
]

healthStore.requestAuthorization(toShare: nil, read: readDataTypes) { (success, error) in
    if !success {
        // Handle the error here
    }
}
```

The code above successfully does this. And imports Apple’s health kit which will be used for collecting the data from the apple watch.

Collecting the data in swift.

Once you have permission, you can query the data. Here's what I have figured out. This example is showing querying heart rate data:

```swift

let heartRateType = HKQuantityType.quantityType(forIdentifier: .heartRate)!

let query = HKSampleQuery(sampleType: heartRateType, predicate: nil, limit: Int(HKObjectQueryNoLimit), sortDescriptors: nil) { (query, results, error) in
    guard let samples = results as? [HKQuantitySample] else {
        // Handle any errors here
        return
    }

    for sample in samples {
        let heartRate = sample.quantity.doubleValue(for: HKUnit.count().unitDivided(by: HKUnit.minute()))
        print("Heart Rate: \(heartRate)")
    }
}

healthStore.execute(query)
```

## Outstanding Questions:

- What do you guys think of the process so far? I am thinking that I will next try and figure out how I can store this data somewhere outside of Apple and in a form where I can then train a model on it for sleep data.
- Questions for health professionals or research: With things like heart rate and HRV what are some things to look for when training a model. For example “When HRV and HR does this then it means you are in deep sleep.” Questions like this for labeling data once we get to that stage.
- For Springer: Where would be a good place to store data and a trained model that makes it easiest for transferring and running it on a micro controller. Not anywhere close to this stage yet but something for me to think about.
- Do we care about the UI? I could spend a serious amount of time with this rabbit hole of learning everything Xcode can do.
