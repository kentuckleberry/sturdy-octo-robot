# sturdy-octo-robot
8 arms
***********************************************

In computer systems security, role-based access control (RBAC)[1][2] or role-based security[3] is an approach to restricting system access to authorized users. It is an approach to implement mandatory access control (MAC) or discretionary access control (DAC).

Role-based access control (RBAC) is a policy-neutral access-control mechanism defined around roles and privileges. The components of RBAC such as role-permissions, user-role and role-role relationships make it simple to perform user assignments. A study by NIST has demonstrated that RBAC addresses many needs of commercial and government organizations.[4] RBAC can be used to facilitate administration of security in large organizations with hundreds of users and thousands of permissions. Although RBAC is different from MAC and DAC access control frameworks, it can enforce these policies without any complication.

Within an organization, roles are created for various job functions. The permissions to perform certain operations are assigned to specific roles. Members or staff (or other system users) are assigned particular roles, and through those role assignments acquire the permissions needed to perform particular system functions. Since users are not assigned permissions directly, but only acquire them through their role (or roles), management of individual user rights becomes a matter of simply assigning appropriate roles to the user's account; this simplifies common operations, such as adding a user, or changing a user's department.

Role based access control interference is a relatively new issue in security applications, where multiple user accounts with dynamic access levels may lead to encryption key instability, allowing an outside user to exploit the weakness for unauthorized access. Key sharing applications within dynamic virtualized environments have shown some success in addressing this problem.[5]

Three primary rules are defined for RBAC:

Role assignment: A subject can exercise a permission only if the subject has selected or been assigned a role.
Role authorization: A subject's active role must be authorized for the subject. With rule 1 above, this rule ensures that users can take on only roles for which they are authorized.
Permission authorization: A subject can exercise a permission only if the permission is authorized for the subject's active role. With rules 1 and 2, this rule ensures that users can exercise only permissions for which they are authorized.
Additional constraints may be applied as well, and roles can be combined in a hierarchy where higher-level roles subsume permissions owned by sub-roles.

With the concepts of role hierarchy and constraints, one can control RBAC to create or simulate lattice-based access control (LBAC). Thus RBAC can be considered to be a superset of LBAC.

When defining an RBAC model, the following conventions are useful:

S = Subject = A person or automated agent
R = Role = Job function or title which defines an authority level
P = Permissions = An approval of a mode of access to a resource
SE = Session = A mapping involving S, R and/or P
SA = Subject Assignment
PA = Permission Assignment
RH = Partially ordered Role Hierarchy. RH can also be written: ≥ (The notation: x ≥ y means that x inherits the permissions of y.)
A subject can have multiple roles.
A role can have multiple subjects.
A role can have many permissions.
A permission can be assigned to many roles.
An operation can be assigned to many permissions.
A permission can be assigned to many operations.
A constraint places a restrictive rule on the potential inheritance of permissions from opposing roles, thus it can be used to achieve appropriate separation of duties. For example, the same person should not be allowed to both create a login account and to authorize the account creation.

Thus, using set theory notation:

{\displaystyle PA\subseteq P\times R}PA\subseteq P\times R and is a many to many permission to role assignment relation.
{\displaystyle SA\subseteq S\times R}SA\subseteq S\times R and is a many to many subject to role assignment relation.
{\displaystyle RH\subseteq R\times R}RH\subseteq R\times R
A subject may have multiple simultaneous sessions with/in different roles.


RBAC
Standardized levels
See also: NIST RBAC model
The NIST/ANSI/INCITS RBAC standard (2004) recognizes three levels of RBAC:[6]

core RBAC
hierarchical RBAC, which adds support for inheritance between roles
constrained RBAC, which adds separation of duties

	
This article has multiple issues. Please help improve it or discuss these issues on the talk page. (Learn how and when to remove these template messages)
This article needs additional citations for verification. (January 2021)
This article or section possibly contains synthesis of material which does not verifiably mention or relate to the main topic. (December 2007)
This article possibly contains original research. (October 2014)
Identity driven networking (IDN) is the process of applying network controls to a network device access based on the identity of an individual or a group of individuals responsible to or operating the device.[1] Individuals are identified, and the network is tuned to respond to their presence by context.

The OSI model provides a method to deliver network traffic, not only to the system but to the application that requested or is listening for data. These applications can operate either as a system based user-daemon process, or as a user application such as a web browser.

Internet security is built around the idea that the ability to request or respond to requests should be subjected to some degree of authentication, validation, authorization, and policy enforcement. Identity driven networking endeavors to resolve user and system based policy into a single management paradigm.

Since the internet comprises a vast range of devices and applications there are also many boundaries and therefore ideas on how to resolve connectivity to users within those boundaries. An endeavor to overlay the system with an identity framework must first decide what an Identity is, determine it, and only then use existing controls to decide what is intended with this new information.


A digital identity represents the connectedness between the real and some projection of an identity; and it may incorporate references to devices as well as resources and policies.

In some systems, policies provide the entitlements that an identity can claim at any particular point in time and space. For example, a person may be entitled to some privileges during work from their workplace that may be denied from home out of hours.

 Research, Jeff Wilson, Infonetics (2007-09-17). "What is identity-based networking?". Network World. Retrieved 2020-11-22
