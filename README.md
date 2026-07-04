![ARP-TABLE-GUARD](<asset/ChatGPT Image Jul 4, 2026, 06_05_42 AM.png>)

![Status](https://img.shields.io/badge/status-experimental-red)
![ESP32](https://img.shields.io/badge/platform-ESP32-blue)


<p align="center">
  <a href="https://awakenfury.github.io/ARP-TABLE-GUARD/">
    🌐 Live Demo
  </a>
</p>



# SecGuard — Windows Network Security Operations Dashboard

> **Experimental Windows Network Monitoring and Security Research Platform**

SecGuard is an experimental Windows-based Network Security Operations dashboard built with HTML Application (HTA), JavaScript, Windows Script Host, and native Windows networking utilities. The project is designed to provide a centralized interface for monitoring network activity, reviewing ARP and routing information, managing Windows Firewall rules, and recording security-related events.

Rather than replacing enterprise security products, SecGuard serves as a research platform for exploring how native Windows networking tools can be combined into a lightweight operational dashboard for learning, testing, and prototype development.

---

## Current Features

### Network Monitoring

* Live ARP table monitoring (`arp -a`)
* Detection of newly discovered ARP entries
* Baseline comparison against expected network state
* Real-time activity log
* Automatic refresh engine

### Route Management

* Displays Windows routing table
* Route selection interface
* Route deletion controls
* Route refresh utilities

### Firewall Management

* Search Windows Firewall rules
* Delete firewall rules
* Create IP blocking rules
* Organize firewall rules into custom groups
* Local tracking database for blocked addresses

### Event Logging

* CSV event logging
* Timestamped security events
* Deleted item tracker
* Firewall action history
* Local security audit trail

### Network Utilities

* DHCP Release
* DHCP Renew
* DNS Cache Flush
* ARP Cache Cleanup
* Route Cleanup
* Network Connection Viewer
* Network Reset Integration
* Firewall Reset Integration

### Local Tracking

SecGuard maintains local records of:

* Blocked IP addresses
* Deleted firewall rules
* Deleted ARP entries
* Network events
* Security actions
* CSV activity history

---

## Dashboard Components

* Live Security Status
* Event Log
* ARP Table Viewer
* Route Table Viewer
* Deleted Item Tracker
* Firewall Rule Search
* Network Diagnostic Controls
* DNS Utility Controls
* System Maintenance Tools

---

## Technology Stack

* HTML Application (HTA)
* JavaScript
* Windows Script Host
* ActiveX
* Windows Firewall (`netsh`)
* Windows Networking (`arp`, `route`, `ipconfig`, `netstat`)
* CSV Logging
* Local File Tracking

---

## Project Goals

The long-term objective of SecGuard is to investigate how native Windows networking components can be integrated into a single operational interface for monitoring, diagnostics, and security research.

Future development may include:

* Device discovery visualization
* Live topology mapping
* Interactive network graph
* Network event timeline
* Automatic anomaly detection
* Windows Event Log integration
* PowerShell backend modules
* Service monitoring
* Performance metrics
* Plugin architecture
* Modern desktop interface
* Remote monitoring support

---

## Project Status

**Current Phase:** Active Development

This project is still under active development. Features, architecture, and workflows are continuously changing as new capabilities are explored and tested.

Some components are experimental and intended for research, prototyping, and educational purposes.

Contributions, feedback, and ideas are welcome as the project evolves.
