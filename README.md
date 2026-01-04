🛡️ Blockchain Node Hardening
This repository provides a technical framework and configuration guide for securing Linux-based blockchain infrastructure. The primary goal is to minimize the attack surface of nodes hosting decentralized protocols.

🎯 Purpose
The goal of this project is to implement "defense-in-depth" strategies for blockchain nodes (Bitcoin, Ethereum, etc.) by securing the underlying operating system and network layers.

🚀 Key Implementations

SSH Hardening: Disabling root login, enforcing SSH key-only authentication, and changing default ports to prevent brute-force attacks.


Kernel Optimization: Tuning sysctl parameters (e.g., tcp_syncookies) to protect the node against SYN flood and DDoS attacks.



Firewall Configuration: Implementing strict port whitelisting via UFW/Iptables to allow only essential P2P traffic.


System Monitoring: Setting up basic resource tracking to ensure node stability and prevent memory exhaustion during block propagation.

⚖️ License & Disclaimer
License: MIT License.

Disclaimer: This project is for educational purposes only. I am not responsible for any security breaches or data loss resulting from the use of these configurations. Always test in a non-production environment.
