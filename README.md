# iQuHACK-2026-Challenge-Superquantum

# Superquantum iQuHACK 2026 – Clifford+T Compilation

This repository contains OpenQASM 2.0 implementations for Tasks 1–11 of the
Superquantum iQuHACK 2026 challenge.

## Structure
Each task is provided as a separate QASM file, following OpenQASM constraints
(one quantum register per file).

## Highlights
- Task 1: Exact Controlled-Y (4 T gates)
- Task 6: 2-qubit Trotterized simulation
- Task 10: Approximate random SU(4) unitary
- Task 11: Exact 4-qubit diagonal unitary with cubic parity (11 T gates)

## Gate Set
- OpenQASM 2.0
- Clifford + T (H, S, T, CNOT)
- No unsupported gates (CZ, CCZ)

All exact tasks were verified numerically up to global phase.
