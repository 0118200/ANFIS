# Legged Robot Yaw Control with ANFIS  

This intelligent step-by-step correction enhances stability, reduces overshoot, and creates a more natural movement pattern.

## 📌 Project Overview
This project explores the implementation of **Adaptive Neuro-Fuzzy Inference System (ANFIS)** for smooth yaw control in a **legged robot**.  
The specific case study focuses on transitioning the robot’s yaw angle from **8° to the setpoint 0°** in a smooth, controlled manner — avoiding abrupt changes that could destabilize the robot.

Instead of jumping directly from 8° to 0°, the ANFIS model ensures a gradual transition:

---

## 🧠 Background: FIS & ANFIS

### Fuzzy Inference System (FIS)
A **Fuzzy Inference System** uses fuzzy logic to map inputs to outputs based on predefined rules and membership functions.  
While FIS is effective for control tasks, it relies heavily on manually crafted rules and cannot **learn** from data — making it less adaptive in dynamic or uncertain environments.

### Adaptive Neuro-Fuzzy Inference System (ANFIS)
**ANFIS** combines the interpretability of fuzzy systems with the adaptive learning power of neural networks.  
It automatically adjusts membership functions and rule parameters through training, using real data.  
In this project, ANFIS learns the relationship between **error yaw** (current yaw - setpoint) and the required **control adjustment**.

---

## 🤖 Case Study: Legged Robot Yaw Control

- **Initial yaw position:** `8°`
- **Target yaw position:** `0°`
- **Control method:** ANFIS-trained model
- **Goal:** Achieve smooth, adaptive correction to avoid mechanical stress and instability.

**Why smooth control matters for legged robots:**
- Sudden yaw changes can cause imbalance.
- Gradual corrections improve walking stability.
- Adaptive systems can handle terrain variations better.

---

## 🚀 Why ANFIS over FIS?

| Feature                  | FIS (Traditional)         | ANFIS (Proposed)          |
|--------------------------|---------------------------|---------------------------|
| Rule Creation            | Manual                    | Data-driven               |
| Adaptability             | Low                       | High                      |
| Learning Capability      | None                      | Neural network-based      |
| Output Smoothness        | Moderate                  | High                      |
| Performance over time    | Static                    | Improves with training    |
| Handling Nonlinearity    | Limited                   | Robust                    |

---

## 📊 Performance Highlights

- **Smoother Trajectories:**  
  ANFIS-generated control steps prevent sudden yaw jumps, reducing mechanical stress.

- **Adaptive Learning:**  
  The system automatically fine-tunes itself based on training data, improving performance with more usage.

- **Noise Resilience:**  
  Less sensitive to small sensor noise compared to static rule-based systems.

- **Generalization:**  
  Works not only for yaw control but can be adapted for pitch, roll, or even multi-legged gait synchronization.

---

## 🔮 Potential Improvements
- **Multi-variable ANFIS:** Incorporate pitch and roll for full-body balance control.
- **Hybrid ANFIS + Reinforcement Learning:** Enhance adaptation to unknown terrains.
- **Real-time Training:** Continuous online learning from sensor feedback.

---

## 📄 License
This project is licensed under the [MIT License](LICENSE).


[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![MATLAB](https://img.shields.io/badge/Tool-MATLAB-orange)](https://mathworks.com)
[![ANFIS](https://img.shields.io/badge/Method-ANFIS-blue)](https://en.wikipedia.org/wiki/ANFIS)
