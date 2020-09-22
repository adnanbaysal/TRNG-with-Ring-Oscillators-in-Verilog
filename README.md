# TRNG-with-Ring-Oscillators-in-Verilog
A true random number generator with ring oscillators structure written in Verilog targeting FPGA's. 

The project is placed and routed on an Atlys board with Spartan-6 FPGA, and the random data is collected on Ethernet port using Wireshark.

Sources given here do not include ethernet cores, since it is found on the internet. In the original ISE project, the ring oscillators placed carefully on the FPGA logic using PlanAhead. Resulting UCF files are not present either.
