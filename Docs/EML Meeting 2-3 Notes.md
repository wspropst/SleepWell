# Weeks 2-3 Notes and Future Steps

## **Recap of Previous Meeting**:
During our previous meeting, we discussed the data available from my Apple Watch and its potential applications. We decided to first identify the specific metrics the watch can provide. With this information in hand, we can then start to explore various predictive models and analyses that can be applied to this data, aiming to derive meaningful insights about the wearer's health and activities. We decided this would be my focus for the coming weeks. Research and talk to more health-focused professionals to see what they thought could be done with the limited sensors on the watch. We also decided I need to start applying for the Apple Watch dev kit. This will allow me to start collecting data for my own application that I write and not just the health app connected to the iPhone.

## **Health Indicators from Apple Watch**:

### 1. **Predicting Stress Levels**:
- **Heart Rate Variability (HRV)**: HRV is a key indicator of stress. A decrease in HRV can indicate increased stress.
- **Heart Rate**: Elevated heart rates outside of physical activity can be a sign of stress.
- **Breathing Rate**: Rapid breathing can be indicative of stress.
- **Activity Levels**: Sudden changes in activity can be a sign of stress or anxiety.

### 2. **Estimating Sleep Quality**:
- **Movement Data (Accelerometer)**: Tossing and turning can indicate restless sleep.
- **Heart Rate**: Lower heart rates are typically associated with deeper stages of sleep.
- **Ambient Noise**: If the Apple Watch detects significant noise during the night, it might indicate disturbances.
- **Blood Oxygen Levels**: Some versions of the Apple Watch can measure blood oxygen levels, which can be indicative of sleep quality and potential sleep disorders like sleep apnea.

### 3. **Predicting Fatigue during Workouts**:
- **Heart Rate**: An elevated heart rate that doesn't decrease with rest can indicate fatigue.
- **HRV**: A decrease in HRV during a workout can indicate the onset of fatigue.
- **Activity Data**: A decrease in activity intensity or sudden stops might indicate fatigue.
- **Breathing Rate**: An increased breathing rate can indicate fatigue.

### 4. **Classifying Physical Activities**:
- **Accelerometer and Gyroscope Data**: The patterns of movement can help classify the type of activity. For example, cycling will have a different movement pattern compared to running.
- **Heart Rate**: Different activities might have different heart rate profiles.
- **GPS Data**: The speed and pattern of movement can help differentiate between activities. For instance, cycling might have a faster and more consistent GPS trace compared to walking.

For each of these objectives, the Apple Watch provides a rich set of data that can be used. However, it's essential to preprocess this data correctly and potentially combine multiple indicators to get accurate predictions or classifications. Additionally, individual differences can play a significant role, so personalized models or calibration periods might be beneficial.

## **Research Sources**:
### 1. **Predicting Stress Levels**:
- **Heart Rate Variability (HRV)**: [American Heart Association](https://www.heart.org/)
- **Heart Rate & Stress**: [Mayo Clinic](https://www.mayoclinic.org/)

### 2. **Estimating Sleep Quality**:
- **Sleep & Heart Rate**: [National Sleep Foundation](https://www.sleepfoundation.org/)
- **Blood Oxygen & Sleep**: [American Sleep Apnea Association](https://www.sleepapnea.org/)

### 3. **Predicting Fatigue during Workouts**:
- **Heart Rate & Exercise**: [Runner's World](https://www.runnersworld.com/)
- **Exercise Physiology**: [American College of Sports Medicine](https://www.acsm.org/)

## **Development Steps**:
### 1. **Requirement Analysis**:
- **Objective Definition**: Clearly define what you want to predict (e.g., stress levels, sleep quality).
- **Data Identification**: Determine which data points from the Apple Watch are required for these predictions.

### 2. **Data Collection & Integration**:
- **API Integration**: Apple provides the HealthKit framework (this is what I will be applying for), which allows apps to access health and fitness data with the user's permission.
- **Data Storage**: Decide on a storage solution (local on the device or cloud-based) ensuring it's secure, especially given the sensitivity of health data.

### 3. **Data Preprocessing**:
- **Cleaning**: Handle missing values, outliers, and any noise in the data.
- **Normalization**: Standardize data to ensure consistent scales, especially if combining multiple data sources.
- **Feature Engineering**: Extract relevant features from the raw data that will be useful for predictions.

### 4. **Model Development**:
- **Model Selection**: Choose appropriate machine learning models based on the prediction task.
- **Training**: Use historical data to train the model. This might require labeled data, especially for supervised learning tasks.
- **Validation**: Regularly validate the model's performance using separate data sets.

### 5. **Application Development**:
- **User Interface (UI)**: Design a user-friendly interface that allows wearers to easily input data, initiate predictions, and view results.
- **User Experience (UX)**: Ensure the app provides value, is intuitive, and respects user privacy.
- **Integration**: Integrate the machine learning model into the app, ensuring predictions are made efficiently.
