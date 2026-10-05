# Academic Project Report — VaaniDesk AI

**Project Title:** VaaniDesk AI — Multilingual Intelligent Voice & Chat Reception and Appointment Agent  
**Domain:** Artificial Intelligence, Multi-Agent Systems & Web Engineering  
**Version:** 1.0.0 (Runnable MVP)  

---

## 1. Executive Summary
VaaniDesk AI is an intelligent virtual receptionist and hospital service appointment agent. Built as an academic demonstration of classical Artificial Intelligence algorithms, Flask REST APIs, and LLM multi-agent architectures, VaaniDesk AI allows patients to interact naturally in **Telugu** (primary), **Hindi**, and **English**. It orchestrates intent detection, rule-based triage, state space action planning, heuristic workflow search, Bayesian symptom triage, and game tree adversarial search within an integrated, modern dashboard.

---

## 2. Problem Statement & Motivation
Modern healthcare facilities and administrative offices encounter communication barriers and patient routing delays due to language differences and repetitive scheduling questions. Traditional chatbots often rely on black-box external proprietary APIs or rigid keyword matchers. 

VaaniDesk AI solves this by combining:
1. Native Indic language processing (Telugu/Hindi) without external API dependencies.
2. Classical transparent AI methods (A* search, Forward/Backward logic chaining, STRIPS planning, Bayesian networks, Decision Trees, Q-Learning, Minimax).
3. Live AI Explainability: Every response reveals the exact intent, active agent, algorithm, and backend action performed.

---

## 3. System Architecture & Components

```
                +-------------------------------------------------------+
                |        VaaniDesk AI Web UI (HTML5/CSS3/Vanilla JS)    |
                |   - Voice STT/TTS   - Multilingual Switcher (TE/HI/EN)|
                |   - Appointment Booking Form   - AI Lab Visualizers   |
                +---------------------------+---------------------------+
                                            | JSON HTTP REST (Port 5000)
                                            v
                +-------------------------------------------------------+
                |              Flask REST API Application               |
                |          (/api/chat, /api/appointments, etc.)         |
                +---------------------------+---------------------------+
                                            |
                                            v
                +-------------------------------------------------------+
                |        Receptionist Orchestrator Multi-Agent          |
                +----+----------------+---------------+---------------+--+
                     |                |               |               |
                     v                v               v               v
           [Decision Tree]     [STRIPS Planner]   [Logic Engine]  [Knowledge Agent]
          (Intent Classifier) (State Progression) (R1-R6 Rules)   (Departments/FAQs)
                     |                |               |               |
                     v                v               v               v
              [A* / BFS Search] [Bayesian Net]  [Q-Learning]    [SQLite DB]
              (Workflow Cost)   (Risk Triage)   (Queue Router)  (Appointments)
```

---

## 4. Key AI Modules Implemented

1. **Uninformed & Informed Search (Labs 2 & 3):**
   - Implemented over the hospital service workflow graph (Reception $\rightarrow$ Triage $\rightarrow$ Department $\rightarrow$ Doctor $\rightarrow$ Slot $\rightarrow$ Confirmation).
   - BFS (FIFO), DFS (LIFO), Greedy Best-First ($f=h$), A\* ($f=g+h$), Hill Climbing, and Beam Search.

2. **Adversarial Game Search (Lab 4):**
   - Minimax vs. Alpha-Beta Pruning Tic-Tac-Toe engine. Demonstrates tree depth evaluation and branch pruning metrics.

3. **Logical Reasoning & Inference (Lab 5):**
   - Horn-clause rule base with Forward Chaining (data-driven), Backward Chaining (goal-driven recursion), and Propositional Resolution Refutation theorem proving.

4. **Structured Knowledge Base (Lab 6):**
   - Relational and semantic entity lookup for departments, doctors, fees, schedules, and multilingual FAQs.

5. **State Space Planning (Lab 7):**
   - STRIPS operators with Preconditions, Add Effects, and Delete Effects to synthesize the appointment booking state progression.

6. **Bayesian Healthcare Screening (Labs 8 & 10):**
   - Exact Bayesian posterior probability calculator $P(\text{Risk}\mid \text{Symptoms})$ with transparent priors, likelihood product factors, and a prominent non-diagnostic educational disclaimer.

7. **Learning Agents (Lab 9):**
   - Supervised Decision Tree Intent Classifier + Tabular Reinforcement Learning (Q-Learning) for dynamic hospital queue routing.

8. **LLM Abstraction Layer:**
   - Unified `LLMProvider` architecture with built-in Deterministic Demo Provider and automatic Local Ollama connectivity.

---

## 5. Experimental Verification & Test Results
A comprehensive test suite of 26 tests was executed using `pytest -v`:
- **API Tests:** Health check, appointments CRUD, services, doctors, FAQs, chat endpoint.
- **Search Tests:** BFS, DFS, A\*, Greedy, Hill Climbing, Beam Search.
- **Logic & Planning Tests:** Forward chaining emergency derivation, minor age guardian rule, backward chaining goal proof, resolution refutation, STRIPS planner, game search.
- **Bayesian & Learning Tests:** Bayesian risk calculation, Decision tree multilingual intent classification, Q-learning convergence.
- **Multilingual Tests:** Telugu script detection, Hindi processing, Emergency keyword overrides.
- **Result:** **26/26 tests passed (100% success rate)** in 2.89s.

---

## 6. Conclusion
VaaniDesk AI fulfills all academic requirements for the Fundamentals of AI, Flask REST APIs, and LLM Applications syllabi. It delivers a fully functional, zero-cost, offline-safe, multi-agent AI receptionist and algorithm laboratory ready for classroom and project evaluation.
