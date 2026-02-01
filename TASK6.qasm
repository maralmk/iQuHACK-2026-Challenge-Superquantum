/**************************************************
 * TASK 6 
 **************************************************/
OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];

//
// ===== Strang step x4 =====
//

//
// ---- STEP 1 ----
//
h q[0]; t q[0]; t q[0]; t q[0]; tdg q[0]; tdg q[0]; h q[0];
h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];

h q[0]; h q[1];
cx q[0], q[1];
h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];
cx q[0], q[1];
h q[0]; h q[1];

h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];
h q[0]; t q[0]; t q[0]; t q[0]; tdg q[0]; tdg q[0]; h q[0];

//
// ---- STEP 2 ----
//
h q[0]; t q[0]; t q[0]; t q[0]; tdg q[0]; tdg q[0]; h q[0];
h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];

h q[0]; h q[1];
cx q[0], q[1];
h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];
cx q[0], q[1];
h q[0]; h q[1];

h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];
h q[0]; t q[0]; t q[0]; t q[0]; tdg q[0]; tdg q[0]; h q[0];

//
// ---- STEP 3 ----
//
h q[0]; t q[0]; t q[0]; t q[0]; tdg q[0]; tdg q[0]; h q[0];
h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];

h q[0]; h q[1];
cx q[0], q[1];
h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];
cx q[0], q[1];
h q[0]; h q[1];

h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];
h q[0]; t q[0]; t q[0]; t q[0]; tdg q[0]; tdg q[0]; h q[0];

//
// ---- STEP 4 ----
//
h q[0]; t q[0]; t q[0]; t q[0]; tdg q[0]; tdg q[0]; h q[0];
h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];

h q[0]; h q[1];
cx q[0], q[1];
h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];
cx q[0], q[1];
h q[0]; h q[1];

h q[1]; t q[1]; t q[1]; t q[1]; tdg q[1]; tdg q[1]; h q[1];
h q[0]; t q[0]; t q[0]; t q[0]; tdg q[0]; tdg q[0]; h q[0];
