# 🛡️ Linux CTF Challenge 3 – Advanced Forensic Analysis

A handcrafted, booby-trapped Linux-based capture-the-flag (CTF) environment. Created as part of the #700DaysOfSkill learning marathon by Jynx.

## 🎯 Challenge Overview
This CTF challenge simulates a real-world scenario where you've discovered a suspicious directory structure. Your mission is to identify hidden files, capture flags, detect traps, and analyze potential security threats through comprehensive file system analysis.
## 📋 Objectives
### Primary Objectives

 Identify all sensitive or suspicious files across the directory structure
 Find at least 3 flags (in various formats and locations)
 Trace one trap or fake clue and document deception techniques
 Enumerate security-relevant files and permissions

### Bonus Objective

 Reconstruct the "attacker's" methodology and objectives


## 🧠 Forensic Analysis
Attack Vector Hypothesis
Based on file analysis, the simulated scenario suggests:

Initial Access: Potential use of SUID binaries for privilege escalation
Persistence: Hidden files and directories for maintaining access
Deception: Multiple decoy files to confuse investigators
Data Hiding: Base64 encoding to obscure sensitive information

Threat Assessment

Risk Level: Medium
Compromise Indicators: SUID files, hidden directories, encoded content
Mitigation: Regular permission audits, file integrity monitoring

## 📊 Learning Outcomes
Skills Developed

File System Analysis - Understanding Linux permissions and ownership
Digital Forensics - Systematic investigation methodology
Deception Detection - Identifying false flags and distractions
Command Line Proficiency - Advanced Linux command usage
Security Awareness - Recognizing privilege escalation vectors

Security Concepts Mastered

SUID/SGID Permissions - Privilege escalation risks
File Hiding Techniques - Dot files and permission manipulation
Content Encoding - Base64 and other obfuscation methods
Forensic Methodology - Systematic evidence collection

## 🤝 Contributing
Found additional flags or alternative solutions? Contributions welcome:

Alternative extraction methods
Additional security analysis
Improved documentation
New challenge ideas
