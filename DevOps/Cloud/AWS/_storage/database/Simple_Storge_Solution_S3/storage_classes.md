# Storage Classes

> lifecycle policies move files automatically between tiers

1. Standard
    - high durability

2. Standard-Infrequent Access
    - high durability
    - used for data that is less frequently accesses but required rapid access when needed

3. One Zone - Infrequent Access (IA)
    - same as Infrequent Access but stored in a single AZ
    
4. Intelligent Tiering
    - automatically moves objects between two access tiers  

5. Glacier
    - Expedited 👉 1 - 5 Min
    - Standard 👉 3 - 5 Hrs
    - Bulk 👉 5 - 12 Hrs
    
6. Glacier - Deep Archive
    - Standard 👉 12 Hrs
    
## Lifecycle Rules