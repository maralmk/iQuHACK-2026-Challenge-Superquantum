
/**************************************************
 * TASK 9 
 **************************************************/
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];

//
// (H ⊗ H)
//
h q[0];
h q[1];

//
// Controlled-Z
//
h q[1];
cx q[0], q[1];
h q[1];

//
// Controlled-S (control q[0], target q[1])
//
cx q[0], q[1];
t q[1];
cx q[0], q[1];
t q[1];

//
// Final H on q[0]
//
h q[0];
