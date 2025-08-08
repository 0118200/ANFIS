# 🤖 ANFIS Yaw Controller for Robotic Leg

A MATLAB-based **Adaptive Neuro-Fuzzy Inference System (ANFIS)** controller designed to enable **smooth and intelligent yaw motion** in a robotic leg. This project simulates a real-world scenario:

> _"A robotic leg starts at **yaw = 8°** and must reach **yaw = 0°** — not in one abrupt move, but through **gradual, intelligent corrections**."_  

Instead of rigid control, ANFIS learns from data to make **smarter, smoother adjustments**, mimicking natural motion for stable robotic locomotion.

![FIS vs ANFIS Comparison](comparison/FIS_vs_ANFIS_comparison.png)  
*ANFIS produces smoother control actions for precise foot placement*

---

## 🎯 Case Study: Smooth Transition from 8° to 0°

### 🧩 Problem
In legged robotics, **sudden movements** cause instability and energy waste. Simply jumping from 8° to 0° is unrealistic. The leg must:
- Move **gradually**
- Respond to **real-time error**
- Avoid overshoot near the target

### 💡 Solution: ANFIS for Adaptive Control
Rather than fixed rules, ANFIS **learns optimal corrections** from training data:
- **Input**: `error = current_yaw - set_point`
- **Output**: `control` → how much to adjust
- **Result**: **8° → 6.2° → 2.1° → 0.3° → 0.02°** (smooth, not instant)

This enables **natural, intelligent motion** — ideal for walking robots.

---

## ⚙️ How It Works

### 1. **Training Phase**
- Trained on 23 input-output pairs: `[error_yaw, control_target]`
- Starts with a **Sugeno-type FIS** (manually designed)
- ANFIS fine-tunes membership functions over **600 epochs**

### 2. **Control Loop (Simulation)**
```matlab
error = yaw - set_point;
control = evalfis(FIS_trained, error);
yaw = yaw - control;
```

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![MATLAB](https://img.shields.io/badge/Tool-MATLAB-orange)](https://mathworks.com)
[![ANFIS](https://img.shields.io/badge/Method-ANFIS-blue)](https://en.wikipedia.org/wiki/ANFIS)
