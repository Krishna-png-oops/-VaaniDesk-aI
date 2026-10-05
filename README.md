# VaaniDesk AI — Multilingual Intelligent Voice & Chat Reception and Appointment Agent

> **VaaniDesk AI** is an academic AI web application demonstrating classical Artificial Intelligence algorithms, Flask REST APIs, and building multi-agent conversational LLM systems. It provides interactive Telugu (primary), Hindi, and English voice and chat reception, state space planning for appointments, Bayesian healthcare triage screening, and dedicated algorithm visualizers for college laboratory syllabi.

---

## 🚀 Quick Start on Windows

### Option 1: One-Click Launcher
Double-click [`run.bat`](file:///c:/Users/Admin/OneDrive/Desktop/VaaniDesk%20AI/run.bat) or run from PowerShell:
```cmd
.\run.bat
```

### Option 2: Manual Terminal Commands
```powershell
# 1. Install dependencies
pip install -r requirements.txt

# 2. Run Automated Test Suite (26 tests)
pytest -v

# 3. Start Application
python backend/app.py
```
Open **[http://127.0.0.1:5000](http://127.0.0.1:5000)** in your browser.

---

## 🌟 Key Features

1. **Multilingual Voice & Chat Receptionist (Telugu, Hindi, English)**
   - Primary focus on **Telugu** (`"నాకు అపాయింట్మెంట్ కావాలి"`, `"రేపు డాక్టర్ అందుబాటులో ఉన్నారా?"`, `"అపాయింట్మెంట్ రద్దు చేయాలి"`).
   - Natural speech synthesis (TTS) & speech recognition (STT) via Web Speech API.
   - Real-time **AI Agent Inspector** explaining which intent, agent, and algorithm handled each message.

2. **Full Healthcare & Appointment System (SQLite Persistence)**
   - 6 Departments: General Medicine, Cardiology, Dermatology, Pediatrics, Orthopedics, ENT.
   - 6 Specialist Doctors with real-time consultation fees, ratings, and time slots.
   - Complete CRUD: Booking with conflict prevention, Lookup, and Cancellation with zero cancellation fee.

3. **Academic AI Syllabus Laboratory Demonstrations (Labs 1–10)**
   - **Lab 1**: Safe environment configuration, `.env.example`, secret protection.
   - **Lab 2**: Uninformed Search (**BFS**, **DFS**) with visited paths & cost tracking.
   - **Lab 3**: Informed Search (**Greedy Best-First**, **A\***, **Hill Climbing**, **Beam Search**).
   - **Lab 4**: Adversarial Game Search (**Minimax** vs **Alpha-Beta Pruning** Tic-Tac-Toe).
   - **Lab 5**: Logical Reasoning (**Forward Chaining**, **Backward Chaining**, **Resolution Refutation**).
   - **Lab 6**: Structured **Knowledge-Based Intelligent Agent** with multi-entity search.
   - **Lab 7**: **STRIPS State Space Planning Agent** generating linear booking progression.
   - **Lab 8 & 10**: **Bayesian Belief Network** for educational healthcare risk triage with transparent posterior calculation and prominent non-diagnostic disclaimer.
   - **Lab 9**: **Learning Agents** — Decision Tree Multilingual Intent Classifier + Q-Learning RL Queue Dispatcher.
   - **LLM Abstraction**: Unified provider interface supporting Offline Demo Mode and Local Ollama with automatic fallback.

---

## 📁 Repository Structure

```
VaaniDesk AI/
├── backend/
│   ├── config.py                 # Lab 1: Configuration & Safe Secret Handling
│   ├── database.py               # SQLite Persistence & Auto-Seeding
│   ├── app.py                    # Flask REST API & Static Server
│   └── ai/
│       ├── multilingual.py       # Telugu/Hindi/English Dictionary & Normalization
│       ├── search.py             # Labs 2 & 3: BFS, DFS, Greedy, A*, Hill Climbing, Beam
│       ├── game.py               # Lab 4: Minimax & Alpha-Beta Pruning
│       ├── logic.py              # Lab 5: Forward/Backward Chaining & Resolution
│       ├── knowledge.py          # Lab 6: Structured Knowledge Agent
│       ├── planning.py           # Lab 7: STRIPS State Space Planning Agent
│       ├── bayesian.py           # Lab 8 & 10: Bayesian Healthcare Triage Network
│       ├── learning.py           # Lab 9: Decision Tree & Q-Learning Agents
│       ├── llm_provider.py       # LLM Abstraction Layer (Demo & Ollama)
│       └── orchestrator.py       # Central Receptionist Orchestrator
├── static/
│   ├── css/styles.css            # Glassmorphic Responsive Design System
│   ├── js/
│   │   ├── api.js                # API Client Wrapper
│   │   ├── state.js              # State Store & Toast Notifications
│   │   ├── receptionist.js       # Voice/Chat Reception & Agent Inspector
│   │   ├── algorithms.js         # Interactive AI Lab Visualizers
│   │   └── app.js                # Main Coordinator & Appointments
│   └── index.html                # Single Page Application Dashboard
├── tests/                        # 26 Comprehensive Pytest Unit & Integration Tests
│   ├── test_api.py
│   ├── test_search.py
│   ├── test_logic_planning.py
│   ├── test_bayesian_learning.py
│   └── test_multilingual.py
├── .env.example
├── .gitignore
├── requirements.txt
├── run.bat
├── README.md
├── PROJECT_REPORT.md
├── ARCHITECTURE.md
├── API_DOCUMENTATION.md
├── DEMO_SCRIPT.md
└── SYLLABUS_MAPPING.md
```

---

## 🧪 Automated Testing
Run the 26 automated unit and integration tests:
```powershell
pytest -v
```
All 26 tests evaluate API routes, appointment persistence, uninformed/informed search, logic deduction, state space planning, Bayesian triage probabilities, decision trees, and multilingual intent handling.
