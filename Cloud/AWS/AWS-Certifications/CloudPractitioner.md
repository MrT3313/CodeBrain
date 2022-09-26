# AWS Cloud Practitioner

## 🧰 Resources

### White Papers
    - Overview of Amazon Web Services

## 📂 Domain Areas
1. Cloud Concepts (26%)
    - AWS Cloud Value Prop
    - Cloud Economics
    - Cloud Architecture Design Principles

2. Technology (33%)
    - methods of deployment & operations
    - global infrastructure
    - technology support

    | Service Name                                                      | 
    | ---                                                               | 
    | [EC2](../_compute/EC2_Elastic-Compute-Cloud/README.md)            | 
    | [Lambda](../_compute/Lambda/README.md)                            |
    | [] | 

3. Security & Compliance (25%)
    - shared responsibility model
    - security & compliance concepts
    - access management

4. Billing & Pricing (16%)
    - pricing models
    - account structures
    - billing
    - pricing
    - billing support

----

## 🔖 Terms
    - High Availability
        - Operates continuously without failure for a long time
    - Elasticity
        - you dont have to plan ahead of time how much capacity you need 
        - provision what is immedietly needed and scale based on demand
    - Agility
        - all the services you ahve access to help you innovate faster giving you speed to market
    - Durability
        - long-term data protection
        - will your data remain intact without corruption

## 🌎 Global Infrastructure

> Region > Availability Zones > Data Centers > Servers

- Region:
    - all over the world
    - each region contain >= 1 Availability Zone
- Availability Zone
    - each AZ contains >= 1 data center
- Data Center
    - each DC contains multiple servers

### Region

> a collection of AVAILABILITY ZONES

- Fully Independent & Isolated
- Most resources are tied to a specific region

### Availbility Zone

> a collection of one or more DATA CENTERS

- one or more physically separated data centers
    - each with redundant power, networking, and connectivity housed in sepawrate facilities

### Edge Locations

> "Mini Data Centers" built to cache content (dont launch resources)

