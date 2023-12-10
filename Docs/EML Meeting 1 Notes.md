## Independent Study Meeting Week 1 Summary

Here is a summary of what what discussed, what I have learned since and what questions remain.

We initiated our discussion diving deep into the realm of **Embedded Machine Learning (EML)**. A significant point raised was the current modus operandi where models are trained off-chip, say in the cloud, and then the trained model is integrated onto the chip. This allows the chip to make inferences based on the model. Intriguingly, training a model directly on these smaller chips is a territory still mostly uncharted, primarily due to the chips' constrained resources compared to large-scale computing centers.

Our conversation transitioned into understanding the vast expanse of EML's applicability. A few things we mentioned as a group:
- Embedding sensors on soldiers to continuously monitor signs of fatigue or weariness.
- Leveraging IR sensors in tandem with cameras, a point I brought up in the context of identifying "dead" units in solar panels.
- **Biological Sensors**:
  - Heart rate monitors
  - Blood pressure sensors
  - Glucose monitors

> **Side Note**: An overarching idea emerged here on how such sensors could revolutionize remote healthcare and telehealth. The real-time and continuous data could potentially transform diagnostics and patient care.

Our discourse then pivoted towards existing hardware:
- PI and STM 32 Micro chips 
- Various wireless sensors

### STM Microcontrollers (Specifically STM32 Series)

**Overview:**  
The STM32 series, part of STMicroelectronics' portfolio, encompasses a broad range of performance, power efficiency, and features. These are ARM-based microcontrollers.

**Benefits in EML Context:**  
1. **Diverse Range**: STM32 microcontrollers come in a variety of configurations from low power to high performance, which can cater to different EML needs.
2. **Low Power Consumption**: Some STM32 variants are designed for ultra-low-power operations, making them suitable for battery-powered EML applications.
3. **Specialized Hardware**: Some STM32 chips come with specialized hardware accelerators for certain operations that can be useful for ML tasks.
4. **Real-time Operations**: Being a microcontroller, the STM32 can provide real-time responses, which is crucial for certain EML applications.
5. **Cost-effective**: Generally, microcontrollers like STM32 are less expensive than more comprehensive computing solutions, allowing for cheaper deployment in mass-scale applications.
6. **IOT Integration**: Springer brought up that AWS is easy to use and tightly involved with STM which could be nice for storing data off chip.
### Raspberry Pi (Pi) Chips

**Overview:**  
The Raspberry Pi is a series of small single-board computers developed in the UK by the Raspberry Pi Foundation. They run a Linux-based OS, typically Raspberry Pi OS.

**Benefits in EML Context:**  
1. **General-purpose OS**: With a Linux-based OS, you have the flexibility to run a wider variety of software and ML frameworks.


As our meeting progressed, we gravitated towards the idea of focusing on biological sensors for my project. The hunt has now commenced for suitable hardware that could serve as the foundation for my research.

### Key Questions:
1. **Data From Apple Watch**: Can I transfer my health data from my Apple watch to another non-Apple device? This could be a goldmine, offering a plethora of existing biological data right from my wrist, negating the immediate need for additional hardware.
2. **Data Interpretation**: Given our collective lack of expertise in healthcare, what insights or patterns can we deduce from this data? Seeking advice from health experts seems like the next logical step.

