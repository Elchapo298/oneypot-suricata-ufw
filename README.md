# oneypot-suricata-ufw
A cybersecurity project that sets up a honeypot using UFW Firewall and Suricata IDS on Kali Linux


# 🔐 Kali Linux Honeypot Setup Script

This is a personal cybersecurity lab project designed to simulate basic intrusion detection and honeypot functionality using Kali Linux. The script automates the setup of a UFW firewall, Suricata IDS, and Pentbox honeypot environment.

---

## 📦 What's Included

- 🔥 **UFW Firewall**: Blocks incoming traffic and allows only key services (SSH, HTTP, HTTPS)
- 👁️‍🗨️ **Suricata IDS**: Monitors and logs suspicious activity on a selected network interface
- 🎯 **Pentbox Honeypot**: Creates fake services to attract potential attackers
- 🛠️ **Automation Script**: One-click install and setup using a bash script

---

## 🧠 Why This Project?

To gain real-world, hands-on experience with network security tools in a controlled virtual lab. It’s designed to help students, junior analysts, and self-learners understand how intrusion detection and honeypots work together.

---

## 🚀 How to Use It

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/kali-honeypot.git
cd kali-honeypot
```

### 2. Make the Script Executable

```bash
chmod +x securityProject.sh
```

### 3. Run the Script (as root)

```bash
sudo ./securityProject.sh
```

During the setup, you’ll be prompted to enter your active network interface (e.g. `eth0`, `wlan0`, or `enp0s3`).

---

## 📊 Testing the Setup

Here are some ideas to test and trigger Suricata and the honeypot:

- Use `nmap` from another machine:  
  ```bash
  nmap -sS <Your_VM_IP>
  ```

- Monitor Suricata logs:  
  ```bash
  sudo tail -f /var/log/suricata/fast.log
  ```

- Connect to fake ports (e.g. via telnet or netcat) to trigger Pentbox:
  ```bash
  telnet <Your_VM_IP> 23
  ```

---

## ⚠️ Requirements

- Kali Linux (or Debian-based distro)
- Root or sudo access
- Internet access to download packages and Pentbox repo

---

## 👤 Author

**Wandi**  
IT Diploma Student | Security Enthusiast | AZ-900 Certified  
Currently working toward SC-900 certification and building hands-on skills in the cybersecurity space.

---

## ☁️ Coming Soon

A second script for setting up a basic Azure VM-based detection lab.

---

## 📎 License

MIT License — feel free to use and adapt.
