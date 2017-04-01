# Lockheed Martin Cyber Kill Chain

Source: http://www.lockheedmartin.com/content/dam/lockheed/data/corporate/documents/LM-White-Paper-Intel-Driven-Defense.pdf


## Terms

### APT
Advanced: Targeted, coordinated, purposeful.
Persistent: Month after month, year after year.
Threat: Intent, opportunity, capability.


### TTP
Tactics, Techniques, Procedures
Observe the TTPs of the enemy.


## Indicators

* Atomic: can't be broken down, retain meaning in intrusion context (email and ip addresses, vulnerability identifiers)
* Computed: derived from data involved in an incident (hash values, regexps, etc)
* Behavioural: collections of atomic and computed indicators; the "story" of the incident

Monitoring must reveal changes in indicators along the kill chain.


### Indicator Lifecycle

1. Report
2. REVEALED
3. Leverage
4. MATURE
5. Discover
6. UTILIZED
7. Analyze
8. REVEALED...


## Intrusion Kill Chain

AKA CKC7 (Cyber Kill Chain 7 (7 phases))

"A kill chain is a systematic process to target and enagage an adversary to
create desired effects."


### US military targeting doctrine steps

AKA F2T2EA

1. find: find adversary targets suitable for engagement
2. fix: fix their location
3. track: track and observe
4. target: target with suitable weapon or asset to create desired effects
5. engage: engage adversary
6. assess: asses effects

*US Department of Defense, 2007*


### CNA/CNE Kill Chain

"The essence of an intrusion is that aggressor must develop a payload to
breach a trusted boundary, establish a presence inside a trusted environment,
and from that presence, take actions towards their objectives, be they moving
laterally inside the environment or violating the confidentiality, integrity,
or availability of a system in the environment."


#### Kill Chain Phases

1. Reconnaissance: Reseach, identification, and selection of targets. Websites, mailing lists (email addresses), information on specific technologies.

2. Weaponization: Coupling a remote access trojan with an exploit into a deliverable payload: malware artifact.

3. Delivery: Transmission of the weapon to the targeted environment. email attachments, websites, USB removable media.

4. Exploitation: Exploitation triggers intruders' code. Likely targets application or OS.

5. Installation: Remote access trojan or backdoor installed that allows persistence.

6. C2 (Command & Control): Once an outbound C2 channel is established, intruders have "hands on the keyboard" inside target environment.

7. Actions on Objectives: Data exfiltration, data integrity violations, availability violations, lateral movement.


## Courses of Action

"The intrusion kill chain becomes a model for actionalbe intelligence when
defenders align defensive capabilities to the specific processes an adversary
undertakes to target the defended environment."


### DoD IO doctrine

*US Department of Defense, 2006*

Each action is considered for each link in the kill chain; determine actions to take at each link that:

1. Detect
2. Deny
3. Disrupt
4. Degrade
5. Deceive
6. Destroy
