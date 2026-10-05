# REST API Documentation — VaaniDesk AI

All endpoints accept and return `application/json` payload structures. Base URL: `http://127.0.0.1:5000`.

---

## 1. System & Health Endpoints

### `GET /api/health`
Checks server status, database connection, and LLM mode.
- **Response `200 OK`**:
```json
{
  "database": "SQLite (Connected)",
  "llm_mode": "Demo",
  "llm_provider": "Academic Demo LLM Provider (Offline Safe)",
  "service": "VaaniDesk AI",
  "status": "healthy",
  "timestamp": "2026-10-05T16:52:34.504201",
  "version": "1.0.0"
}
```

### `GET /api/config`
Retrieves public system runtime configuration and masked environment settings.

---

## 2. Receptionist & Conversational Endpoints

### `POST /api/chat`
Processes conversational voice or chat messages in Telugu, Hindi, or English.
- **Request Body**:
```json
{
  "message": "నాకు అపాయింట్మెంట్ కావాలి",
  "language": "te"
}
```
- **Response `200 OK`**:
```json
{
  "action": "Generate Appointment Booking State Progression",
  "agent": "State Space Planning Agent",
  "algorithm": "STRIPS State Space Planning + A* Search",
  "detected_language": "te",
  "intent": "BOOK_APPOINTMENT",
  "llm_mode": "Demo",
  "query": "నాకు అపాయింట్మెంట్ కావాలి",
  "response": "మీ అపాయింట్మెంట్ బుకింగ్ కోసం ప్లానింగ్ ఏజెంట్ సిద్ధంగా ఉంది!...",
  "ui_action": "NAVIGATE_TO_APPOINTMENTS"
}
```

---

## 3. Hospital Catalogs & Knowledge Base

### `GET /api/services`
Lists all hospital departments (General Medicine, Cardiology, Dermatology, Pediatrics, Orthopedics, ENT).

### `GET /api/doctors`
Lists specialist doctors, consultation fees, available schedules, and ratings.
- **Query Params**: `department_id` (optional).

### `GET /api/faqs`
Retrieves multilingual hospital FAQs in Telugu, Hindi, and English.

### `GET /api/knowledge`
Returns consolidated knowledge base containing departments, doctors, policies, and FAQs.

---

## 4. Appointments CRUD Endpoints

### `GET /api/appointments`
Returns all active patient appointments stored in SQLite.

### `POST /api/appointments`
Books a new patient appointment and holds the doctor time slot.
- **Request Body**:
```json
{
  "patient_name": "Suresh Sharma",
  "patient_phone": "9848012345",
  "patient_age": 32,
  "language": "te",
  "department_id": 2,
  "doctor_id": 2,
  "appointment_date": "2026-10-12",
  "appointment_time": "11:30 AM",
  "reason": "Cardiology Consultation",
  "priority": "NORMAL"
}
```
- **Response `201 Created`**:
```json
{
  "success": true,
  "booking_ref": "VD-2026-4821",
  "message": "మీ అపాయింట్మెంట్ విజయవంతంగా బుక్ చేయబడింది!..."
}
```

### `DELETE /api/appointments/<id>`
Cancels an appointment and releases the doctor time slot back to available.

---

## 5. AI Laboratory Endpoints (Labs 2–10)

### `POST /api/search`
Runs BFS, DFS, Greedy Best-First, A\*, Hill Climbing, or Beam Search over the hospital service graph.
- **Request Body**:
```json
{
  "algorithm": "astar",
  "start": "Reception",
  "goal": "Appointment_Confirmed"
}
```

### `POST /api/logic`
Evaluates propositional rules using forward chaining, backward chaining, or resolution refutation.
- **Request Body**:
```json
{
  "mode": "forward",
  "facts": { "emergency": true, "severe_symptoms": true, "age": 16 }
}
```

### `POST /api/planning`
Synthesizes a STRIPS linear state space plan for appointment reservation.

### `POST /api/bayesian`
Computes exact Bayesian posterior probabilities $P(\text{Risk}\mid \text{Evidence})$ for symptom triage.
- **Request Body**:
```json
{
  "symptoms": { "fever": true, "cough": true, "chest_pain": true }
}
```

### `POST /api/classify`
Classifies multilingual user intent using the trained Decision Tree classifier.

### `POST /api/reinforcement`
Runs Tabular Q-Learning training for OPD patient queue management.

### `POST /api/game`
Calculates AI move for Tic-Tac-Toe using Minimax or Alpha-Beta Pruning.
- **Request Body**:
```json
{
  "board": ["X", "", "", "", "O", "", "", "", ""],
  "algorithm": "alphabeta"
}
```
