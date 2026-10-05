# System Architecture & Technical Specifications — VaaniDesk AI

```mermaid
graph TD
    User([User: Web Browser / Voice / Chat]) -->|HTTP JSON / Web Speech API| Frontend[Frontend SPA: HTML5 / CSS3 / Vanilla JS]
    
    subgraph Frontend Subsystems
        Frontend --> UI_Chat[AI Receptionist View]
        Frontend --> UI_Appt[Appointments View]
        Frontend --> UI_Search[Search Engine Visualizer]
        Frontend --> UI_Logic[Logic Reasoner View]
        Frontend --> UI_Plan[Planning Agent View]
        Frontend --> UI_Bayes[Bayesian Triage View]
        Frontend --> UI_Learn[Learning Agents View]
        Frontend --> UI_Game[AI Game Lab View]
    end

    Frontend -->|REST APIs :5000| Flask[Flask REST API Server]

    subgraph Backend Intelligence Layer
        Flask --> Orch[Receptionist Orchestrator]
        
        Orch --> MultiLang[Multilingual Engine: TE / HI / EN]
        Orch --> DT[Decision Tree Classifier]
        Orch --> LogicEngine[Propositional Logic Engine]
        Orch --> STRIPS[STRIPS Planning Agent]
        Orch --> SearchAlgo[Search Engine: A*, BFS, DFS, Greedy]
        Orch --> BayesNet[Bayesian Belief Network]
        Orch --> QLearn[Q-Learning OPD Queue Agent]
        Orch --> Minimax[Minimax / Alpha-Beta Game Engine]
        Orch --> KnowledgeAgent[Knowledge-Based Intelligent Agent]
        Orch --> LLM[LLM Abstraction: Demo & Ollama Provider]
    end

    subgraph Persistence Layer
        KnowledgeAgent --> SQLite[(SQLite Database: vaanidesk.db)]
        Flask --> SQLite
    end
```

---

## Technical Specifications

| Component | Technology | Description |
| :--- | :--- | :--- |
| **Backend Framework** | Python 3.10+ / Flask 3.1+ | Lightweight RESTful routing, CORS support, static file hosting. |
| **Persistence** | SQLite 3 (`backend/data/vaanidesk.db`) | Relational persistence with auto-seeding for departments, doctors, slots, appointments, FAQs, and policies. |
| **Machine Learning** | Scikit-Learn / NumPy | Supervised Decision Tree classifier (`criterion='entropy'`) with sublinear TF-IDF n-grams. |
| **Search & Graph** | Pure Python Standard Library | Breadth-First, Depth-First, Greedy Best-First, A\*, Hill Climbing, and Beam Search. |
| **Planning** | STRIPS Forward Search | Precondition-Action-Effect state space search for appointment workflows. |
| **Probabilistic Inference**| Exact Bayes Theorem | Conditional Probability Tables (CPTs) evaluating symptom posteriors $P(\text{Risk}\mid E)$. |
| **Game Search** | Alpha-Beta Pruning | Adversarial 2-player zero-sum game tree search. |
| **Frontend** | Vanilla JavaScript / Modern CSS3 | Zero frontend build step, native Web Speech API (STT/TTS), glassmorphism design. |
| **Testing** | Pytest 8+ | 26 automated unit and integration tests covering all routes and AI modules. |
