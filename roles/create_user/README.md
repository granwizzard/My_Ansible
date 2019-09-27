Create User
=========

Create user and upload ssh key for authentucation

Requirements
------------

No specific required Ansible.
Need a default ssh public key or a specific key needs to be called out in a variable.

Role Variables
--------------

# define the user you want to create
user_name: user01
# define the user state present or absent
user_state: present

# define the path to the ssh public key
ssh_key: ~/.ssh/id_rsa.pub


Dependencies
------------

None.

Example Playbook
----------------

---
- hosts: linux
  tasks:
    - include_role:
        name: create_user
      vars:
        user_name: user01
        ssh_key: ~/.ssh/id_rsa.pub

License
-------

MIT

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
