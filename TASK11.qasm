/**************************************************
 * TASK 11 
 **************************************************/
OPENQASM 2.0;
include "qelib1.inc";
 qreg q11[4];

// ---- Linear phases ----
t   q11[1];
tdg q11[3];

// ---- Quadratic parity phases ----
cx q11[0], q11[1];
s  q11[1];
cx q11[0], q11[1];

cx q11[1], q11[2];
s  q11[2];
cx q11[1], q11[2];

cx q11[2], q11[3];
s  q11[3];
cx q11[2], q11[3];

// ---- Cubic parity term ----
cx q11[0], q11[1];
cx q11[1], q11[2];
t  q11[2];
cx q11[1], q11[2];
cx q11[0], q11[1];

// ---- Final corrections ----
tdg q11[2];
t   q11[3];
