# Delayed Onset Muscle Soreness (DOMS) Detection 🚴🏼‍♀️💪
Hey there! Welcome to my DOMS Detection project. 

🚀 In this project, I'll give you a sneak peek into how I processed data, trained a machine learning model, and managed to deploy it into a microcontroller (Mikromedia 7 with STM32F746ZG chipset) using MikroC Pro for ARM to finally detect DOMS in realtime using EMG sensors. So, buckle up, and let's dive in!

**NOTES:** 
- Hardware used: a Microcontroller (Mikromedia 7 FPI Capacitive with STM32F746ZG MCU Card), 3 EMG Click, USB UART Click, and Electrodes.
- Software used: Python for the Software Processing and Mikro C Pro for ARM for the Hardware Program.
- The data used in this project are primary data using 3 electromyography (EMG) from the Calve (emg1), Quadricep (emg2), and Hamstring Muscle (emg3).

## 1. Software Processing 🔍
This section encompasses Exploratory Data Analysis (EDA), Cleaning, and Machine Learning Modeling. Machine Learning used in this project is Neural Network.

In this section, my main goals are:
- Exploring the data
- Identifying necessary cleaning steps
- Built dataset
- Built machine learning model and evaluation

## 2. Hardware Program 🚀
This section encompasses Visualization, Integration, and Deployment.

In this section, my main goals are:
- Design microcontroller interface
- Integration between 3 EMG sensors and microcontroller
- Deploy machine learning model that have been built in PC into microcontroller to detect DOMS after cycling

### So, there you have it! My journey from collecting sensors data to deploying machine learning model into microcontroller. Feel free to check out the code! 🤓
