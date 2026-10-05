# 5-Minute College Presentation Demonstration Script — VaaniDesk AI

This script is structured for a 5-minute live project demonstration for professors and examiners.

---

## ⏱️ Timeline & Step-by-Step Walkthrough

### **Minute 0:00 – 0:45 | Introduction & Overview**
1. **Open the browser**: Navigate to `http://127.0.0.1:5000`.
2. **Speaker Introduction**:
   > *"Good morning/afternoon. Today I present **VaaniDesk AI**, an intelligent multilingual voice & chat reception and appointment assistant. It is designed to demonstrate 10 fundamental AI concepts, Flask REST APIs, and multi-agent LLM systems."*
3. **Show Dashboard**:
   - Highlight the stat cards (4 active appointments, 6 hospital departments, 6 specialist doctors, 3 supported languages).
   - Point out the **LLM Mode: Demo (Offline Safe)** badge in the sidebar.

---

### **Minute 0:45 – 1:45 | Multilingual Receptionist & AI Explainability**
1. **Navigate to `AI Receptionist` tab**.
2. **Demonstrate Telugu Processing**:
   - Click the prompt chip: **`నాకు అపాయింట్మెంట్ కావాలి`** (or speak via microphone).
   - The assistant replies in Telugu.
3. **Highlight the AI Agent Inspector sidepanel**:
   - Show how the system explains:
     - **Detected Intent**: `BOOK_APPOINTMENT`
     - **Active Agent**: `State Space Planning Agent`
     - **Algorithm**: `STRIPS State Space Planning + A* Search`
4. **Demonstrate Emergency Safety Rule**:
   - Click chip: **`తీవ్రమైన గుండె నొప్పి అత్యవసరం`** (Severe chest pain emergency).
   - Show how the Logic Engine immediately triggers the highest priority emergency triage protocol.

---

### **Minute 1:45 – 2:45 | Search Algorithms (Labs 2 & 3)**
1. **Navigate to `Search Engine` tab**.
2. **Show Uninformed vs Informed Search**:
   - Select **A\* Search** ($f=g+h$) and click **Run Search Algorithm**.
   - Show the optimal path: `Reception ➔ Triage ➔ Emergency_Care ➔ Appointment_Confirmed` with Total Path Cost $g(n)=2$.
   - Switch to **Breadth-First Search (BFS)** or **Beam Search** and compare the visited nodes array in the execution trace terminal.

---

### **Minute 2:45 – 3:30 | Logical Reasoning & State Space Planning (Labs 5 & 7)**
1. **Navigate to `Logic Reasoner` tab**:
   - Toggle facts: `Emergency = True`, `Severe Symptoms = True`, `Age = 16`.
   - Click **Run Forward Chaining** to show rules R1 and R2 firing to derive `priority = HIGH` and `guardian_required = True`.
   - Click **Run Resolution Refutation Demo** to show propositional resolution deriving the empty clause $\bot$.
2. **Navigate to `Planning Agent` tab**:
   - Click **Generate State Space Plan** to show the 6-step STRIPS operator progression achieving `[Appointment_Confirmed, Booking_Reference_Issued]`.

---

### **Minute 3:30 – 4:15 | Bayesian Healthcare Screening (Labs 8 & 10)**
1. **Navigate to `Bayesian Triage` tab**:
   - Point out the **Educational Disclaimer Banner**.
   - Check symptoms: **Fever**, **Cough**, and **Severe Chest Pain**.
   - Click **Compute Bayesian Probabilities**.
   - Show how the exact Bayes theorem posterior calculation updates the probability bars (e.g. Moderate/High Risk) with full prior and likelihood transparency.

---

### **Minute 4:15 – 4:45 | Learning Agents & AI Game Search (Labs 4 & 9)**
1. **Navigate to `Learning Agents` tab**:
   - Type `"నాకు డాక్టర్ అపాయింట్మెంట్ కావాలి"` in the Decision Tree classifier box and click **Classify Intent**. Show tree depth and confidence score.
   - Click **Train Q-Learning Agent** to show dynamic OPD queue reinforcement learning policy convergence.
2. **Navigate to `AI Game Lab` tab**:
   - Play a quick move in Tic-Tac-Toe.
   - Point out the Alpha-Beta pruning metric showing nodes evaluated and branches pruned.

---

### **Minute 4:45 – 5:00 | Conclusion & Q&A**
1. **Speaker Conclusion**:
   > *"VaaniDesk AI demonstrates full end-to-end integration: native Telugu/Hindi language processing, persistent SQLite appointment management, and 10 classical and learning AI algorithms with zero cloud dependency and 100% automated test coverage."*
2. **Open for Questions**.
