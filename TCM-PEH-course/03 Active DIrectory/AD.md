# Active Directory (AD)

## Overview:
Active Directory (AD) is a directory service developed by Microsoft to manage Windows Domains. It stores information related to objects such as computers, users, printers, and more. AD provides authentication using Kerberos Tickets. Non-Windows devices, such as Linux machines and firewalls, can also authenticate to AD via RADIUS or LDAP.

## Why Learn AD:
- AD is the most commonly used identity management service in the world.
- AD can be exploited without ever attacking patchable exploits, making knowledge of it crucial for security.

## Physical Components of AD:

### Domain Controllers:
- Host a copy of the Active Directory Domain Services (AD DS) directory store.
- Provide authentication and authorization services.
- Replicate updates to other domain controllers within the domain and forest.
- Allow administrative access to manage user accounts and network resources.

### AD DS Data Store:
- Consists of the Ntds.dit file.
- By default, it is stored in the `%SystemRoot%\NTDS` directory on all domain controllers.
- Accessible only through the domain controller process and protocols.

## Logical Components of AD:

### AD DS Schema: The Rule Book
- Defines every type of object that can be stored in the directory.
- Enforces rules regarding object creation and configuration.
  - **Class Object**: Specifies what objects can be stored in AD, e.g., User, Computer.
  - **Attribute Object**: Specifies the information that can be attached to an object, e.g., Display Name.

### Domain:
- Used to group and manage objects within an organization.
- Acts as an administrative boundary for applying policies to groups of objects.
- Serves as a replication boundary for replicating data between domain controllers.
- Functions as an authentication and authorization boundary, limiting access to resources.

### Domain Tree:
- A hierarchy of domains within AD DS.
- Shares a contiguous namespace with the parent domain.
- Can include additional child domains.
- By default, creates a two-way transitive trust with other domains.

### Forest:
- A collection of one or more domain trees.
- Shares a common schema.
- Shares a common configuration partition.
- Shares a common global catalog to enable searching.
- Enables trusts between all domains in the forest.
- Shares the Enterprise Admins and Schema Admins groups.

### Organizational Units (OUs):
- Containers that can hold users, groups, computers, and other OUs.
- Represent your organization hierarchically and logically.
- Manage a collection of objects in a consistent way.
- Delegate permissions to administer groups of objects.
- Apply policies.

### Trusts:
- Provide a mechanism for users to gain access to resources in another domain.
  - **Directional**: The trust direction flows from the trusting domain to the trusted domain.
  - **Transitive**: The trust relationship extends beyond a two-domain trust to include other trusted domains.
- All domains in a forest trust all other domains in the forest.
- Trusts can extend outside the forest.

---
