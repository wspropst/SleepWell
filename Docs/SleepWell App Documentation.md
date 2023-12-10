# SleepWell App Documentation

## Overview
SleepWell is a smartwatch application designed to leverage advanced sensor capabilities for monitoring and enhancing sleep quality. The app collects physiological data, analyzes sleep patterns, and provides personalized recommendations.

## Features
- Interactive user interface for easy navigation.
- Collection of physiological data from Apple Watch sensors.
- Personalized sleep insights based on data analysis.
- Data privacy and secure storage of user health information.

## Interface and Navigation

### WelcomeView
- **File**: `WelcomeView.swift`
- **Description**: Initial view displaying the SleepWell logo and a navigation button.
- **Functionality**:
  - Showcases the app's logo.
  - Contains a `NavigationLink` to the dashboard (`ContentView`).
- **Implementation**: Uses `ScrollView` and `VStack` for layout.
- ![Screenshot 2023-12-09 at 3.55.11 PM](https://hackmd.io/_uploads/HypiCdzUa.png)
- ![SleepWellLogo](https://hackmd.io/_uploads/B1UpCuMIp.jpg)
- This image was also generated over 16 iterations with generative AI




### ContentView
- **File**: `ContentView.swift`
- **Description**: Main dashboard view of the app.
- **Functionality**:
  - Summarizes sleep data.
  - Provides navigation to `HeartRateChartView`.
- **Implementation**: Utilizes `ScrollView` for scrollable content and `NavigationLink` for transitioning to the heart rate chart view.
![Screenshot 2023-12-09 at 3.55.32 PM](https://hackmd.io/_uploads/HJZfkFzLa.png)
![Screenshot 2023-12-09 at 3.55.45 PM](https://hackmd.io/_uploads/SJZzJYGL6.png)
![Screenshot 2023-12-09 at 3.55.53 PM](https://hackmd.io/_uploads/HyZzyYMLp.png)


### HeartRateChartView
- **File**: `HeartRateChartView.swift`
- **Description**: Displays a heart rate chart for sleep analysis.
- **Functionality**:
  - Graphical representation of the user’s heart rate during sleep.
- **Implementation**: Placeholder graphic representing the heart rate data. Idea for what it would look like
![HeartRateGraphIdea](https://hackmd.io/_uploads/HyX4ktG8p.jpg)


## Data Collection and Storage

### HealthStore
- **File**: `HealthStore.swift`
- **Description**: Manages HealthKit integration.
- **Functionality**:
  - Requests user authorization to access heart rate and sleep analysis data.
  - Provides methods to query specific data types from HealthKit.
- **Implementation**: Uses `HKHealthStore` to interact with HealthKit and `HKObjectType` to specify data types.

### SleepDataManager
- **File**: `SleepDataManager.swift`
- **Description**: Handles local data storage and retrieval.
- **Functionality**:
  - Saves and retrieves user sleep data.
  - Currently uses `UserDefaults` for simple data persistence.
- **Implementation**: Provides functions for saving and fetching data. Placeholder for more advanced data management solutions.

## User Permissions and Data Security

- The app requests user permission for accessing health data in HealthKit.
- Prioritizes data privacy and security, ensuring encrypted and secure storage.
- Compliant with standard privacy regulations for handling health-related data.

## Future Development
- Enhancements in data analysis using machine learning for more nuanced insights.
- Development of a more robust data storage solution, potentially cloud-based or using Core Data.
- Continuous improvements to the UI/UX for a more engaging user experience.


## Sleep Classifiers Repository

### Overview
The Sleep Classifiers Repository is an integral part of the SleepWell app, aimed at analyzing sleep data to classify different stages of sleep. 

### Functionality
- **Data Analysis**: The repository uses advanced algorithms to process sleep data collected from the smartwatch.
- **Sleep Stage Classification**: It classifies the data into various sleep stages such as REM, light sleep, and deep sleep.
- **Implementation**: The classifier employs machine learning models trained on sleep data to accurately categorize the stages based on physiological signals.

### Integration with SleepWell
- The classifiers work in tandem with the SleepWell app, where the collected data from the smartwatch is fed into these models for analysis.
- The output from the classifiers is used to provide users with detailed insights into their sleep patterns.

## Future Development: Model Training and Integration on Apple Watch

### Goal
The ultimate objective is to evolve the SleepWell app into a more autonomous and sophisticated tool by integrating and training the sleep classifiers directly on the Apple Watch.

### Training the Model on Apple Watch
- **On-Device Machine Learning**: Leveraging the processing capabilities of the Apple Watch to run the sleep classification models directly on the device.
- **Real-Time Analysis**: This integration will allow for real-time sleep stage analysis, offering immediate insights and recommendations.

### Challenges and Considerations
- **Resource Optimization**: Ensuring the models are efficient enough to run on the Apple Watch without draining its resources.
- **Data Privacy**: Maintaining user data privacy with on-device processing.
- **Accuracy and Reliability**: Continuously improving the model for high accuracy and reliability in sleep stage classification.

### Long-Term Vision
- **Advanced Sleep Monitoring**: Making SleepWell a leading tool in personal health management by providing advanced sleep monitoring and analysis capabilities.
- **User-Centric Health Insights**: Offering personalized health insights based on comprehensive sleep data analysis, contributing to better sleep hygiene and overall well-being.

