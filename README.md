SEQUENCE DETECTOR OF 101 PATTERN 

It is a moore overlapping fsm to detect the 101 pattern.

The state diagram of this fsm is : 


 APPLICATION OF SEQUENCE DETECTOR: 
 1.Preamble Detection (Ethernet/Wi-Fi): Before data is sent, a specific pattern (like 10101011) is sent to synchronize the receiver. A sequence detector "wakes up" the system when this pattern is found.
 2.Frame Synchronization: In protocols like USB or HDMI, data is sent in packets. Sequence detectors find the "Start of Frame" (SOF) markers so the hardware knows where the actual data begins.
 3.Bit-Stuffing Detection: In CAN bus (automotive), the hardware inserts extra bits to maintain synchronization. A sequence detector identifies these bits so they can be removed.
 4.Pattern Matching in Security: Hardware-based firewalls use high-speed sequence detectors to scan incoming packets for known "malicious signatures" or virus patterns in real-time.
 5.Command Decoders: In simple microcontrollers, an FSM acts as a sequence detector to decode opcodes (instructions) like MOVE or ADD from the instruction stream.
