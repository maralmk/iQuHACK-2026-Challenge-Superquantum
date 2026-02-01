/**************************************************
 * TASK 7
 **************************************************/

qreg q[2];

//
// Prepare superposition on q0
//
h q[0];
t q[0];
tdg q[0];

//
// Entangle
//
cx q[0], q[1];

//
// Adjust q1 amplitudes
//
h q[1];
t q[1];
tdg q[1];

//
// Phase corrections
//
t q[0];
t q[1];
