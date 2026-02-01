/**************************************************
 * TASK 10 
 **************************************************/
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];

//
// Layer 1: local randomization
//
h q[0];
t q[0];
h q[1];
tdg q[1];

//
// Entangling block 1
//
cx q[0], q[1];
t q[1];
cx q[1], q[0];
tdg q[0];

//
// Layer 2
//
h q[0];
t q[0];
h q[1];
t q[1];

//
// Entangling block 2
//
cx q[0], q[1];
t q[1];
cx q[1], q[0];
t q[0];

//
// Layer 3
//
h q[0];
tdg q[0];
h q[1];
t q[1];

//
// Entangling block 3
//
cx q[0], q[1];
t q[1];
cx q[1], q[0];
tdg q[0];

//
// Final tuning
//
h q[0];
t q[0];
h q[1];
tdg q[1];
