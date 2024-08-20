# AD:
## its like phone book for windows.
- Directory Service Developed by Microsoft to manage Windows Domain.
- stores information related to objects, such as Computer, Users, Printers, etc.
- Authectication using Kerberos Tickets.
 -	non-windows devices, such as linux machines firewalls, etc. can aslo authecticate to AD via RADIUS OR LDAP.
\n 
## Why to learn AD:
- AD is the most commanly used identity management service in the world.
- can be exploited without ever attacking patchable exploits.
\n
## Physical Components of AD:
### Domain Controllers.
- host a copy of the AD DS dirctory store.
- Provide Authentication and Authorization Service.
- Replicate Updates to other domain controllers in the domain and forest.
- Allow administrattive access to manage user accounts and network resources.
/n
### The AD DS data Store.
- Consistes of the Ntds.dit file.
- is stored by default in the %SystemRoot%\NTDS on all domain controllers.
- is accessible only through the domain controller process and protocols
\n
## Logical Components.
### The AD DS Schema: RUleBook
- Defines every type of object that can be stored in the  directory.
- enforces rules regarding object creation and configuration.
'''Class Object: What object can be stored in the AD. ex. user, COmputer
Attribute Object: Information that can be attached to an Object. ex. Display name'''
\n
### Domain: used to group and manage obbject in an organization.
- An administrative boundary for applying policies to group of objects.
- A replciation boundary for replication data between domain controllers.
- an authetication and authorization boundary that provides a way to limit the scope of access to resources.
\n
### All Domain Tree.: its a hierachy of domain in AD DS.
- Share a contiguous namespace with the parent domain.
- can have additional child domain.
- by default create a two way transitive trust with other domains.
\n
## Forest: its a collection of one or more domain trees.
- share a common schema.
- share a common configuration partition.
- share a common global catalog to enable searching.
- enable trusts between all domains in the forest.
- share the enterprise admins ans schema Addmins groups.
\n
