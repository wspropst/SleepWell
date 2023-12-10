# SleepWell Project Continuation Plan

Given what we have talked about so far making a long term plan for this application, this is what I imagine would be needed in the development of this product.

## Research Phase:

### Literature Review:
- Conduct a comprehensive review of new research on sleep analysis and impact factors on sleep quality.
- Update references and integrate latest findings.

### Data Privacy and Security:
- Explore data encryption and storage best practices.
- Develop a privacy policy aligned with GDPR, HIPAA, or other relevant regulations.

### Algorithm Development:
- Research and develop algorithms for sleep stage analysis.
- Refine personal recommendation algorithms based on user data.

### Integration Research:
- Investigate API options for health app and smart home device syncing.
- Assess cross-platform compatibility potential.

## Development Phase:

### Prototype Design:
- Create wireframes and UI designs.
- Develop an initial codebase with core functionalities.

### Data Collection:
- Implement secure and anonymized data collection from smartwatch sensors.

### Feature Implementation:
- Start with basic features such as sleep stage identification.
- Gradually add advanced features like dietary impact analysis.

### User Feedback Mechanism:
- Develop an in-app feedback system.
- Integrate a manual input feature for sleep-affecting factors.

### Pilot Testing:
- Conduct initial testing to collect data and refine algorithms.

## Evaluation Phase:

### User Testing:
- Expand user testing for comprehensive data collection.
- Analyze usability and accuracy of sleep analysis and recommendations.

### Data Analysis and Machine Learning:
- Begin machine learning processes for pattern recognition.
- Refine algorithms based on user feedback.

### Health Integration Testing:
- Test the integration with other health apps and data enhancement.

## Final Deliverables:

### Working Prototype:
- A beta version of the SleepWell app deployable to smartwatches.

### Documentation:
- Technical documentation on design, development, and data procedures.
- User manual or guide for app usage.

### Research Paper/Report:
- A report on research findings, development challenges, and app impact.

### Presentation:
- A presentation summarizing the project with demos and future plans.

### User Feedback Summary:
- A compilation of user feedback with insights and improvements.

### Security and Privacy Report:
- A detailed report on user data security and privacy implications.


Since we have a very limited amount of time. I am thinking I continue my work with the coding and then write up a "next steps" document to discuss what someone would do after me. As well as write up a "research" document containing all the relevant information and sources I have learned from over this semester.

# SleepWell Project Development Log

## Completed Steps

### Step 1: Development Environment Setup
- **Xcode Installed**: The latest version of Xcode has been downloaded and installed from the Mac App Store.
- **macOS Compatibility**: The Mac has been updated to ensure compatibility with the installed version of Xcode.
- **Apple Developer Account**: An Apple Developer account has been created to enable testing on physical devices and eventual app publishing.

### Step 2: Project Initialization
- **New Project Started**: A new Xcode project has been initiated, choosing a template for an iOS app with a WatchKit App, creating a project structure for both an iPhone app and an Apple Watch app.
- **Project Configured**: The project has been named SleepWell. The team, organization name, and identifier have been set. Swift has been chosen as the programming language with SwiftUI for the user interface.

### Step 3: Basic Code Structure
- **Source Control Setup**: A Git repository has been initialized within Xcode, and the initial project structure has been committed to track changes.
- **Architecture Defined**: The MVC (Model-View-Controller) pattern has been adopted, and directories for Models, Views, and Controllers/ViewModels have been created.
- **Model Classes Created**: A `SleepData` class to encapsulate sleep information has been defined.
- **Basic UI Built**: A new SwiftUI View has been created to serve as the initial app interface, displaying sleep data or receiving user feedback.
- **Sensor Data Integration**: HealthKit integration has begun to collect relevant sleep health data with appropriate permissions handling.
- **Dummy Data and Logic**: Dummy data has been set up to simulate sleep stage data, and basic functions for data generation have been implemented.

