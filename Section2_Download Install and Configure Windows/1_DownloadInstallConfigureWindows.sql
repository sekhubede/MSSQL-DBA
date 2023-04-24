/*
MS SQL Server Pre-requisite
- You should have admistrative rights on your computer.

- Hard disk = 6GB minimum (20GB)
- Memory = All editions except express = 1GB min
            Express edition = 512MB (4 GB for windows)
- Processor speed = Minimum: x64 Processor: 1.4GHz
                    Recommended: 2.0 GHz or Faster (only 64bit processor)
- Operating system = windows server 2016

LAB SET UP

Option1: Installing SQL Server on windows machine.
        - SQL Server express only (No Enterperise)

Option2: Install virtual machine software
        - VMWare workstation player
        - Oracle virtual box

        - Install windows server 2016 (operating system)
        - Install SQL server Enterprise edition
*/

/*
Virtualization
- Understanding the physical system configuration

- Physical Server (DELL, HP), (16G RAM + 4CPU)
    - Operating System (Windows, Linux), (4G RAM + 2CPU)
        - Application (Excel, Word; DNS, NTP; ERP, SAP etc.),(2G + 1CPU)

    8GB RAM + 2CPU - Resources are under utilized
    To resolve this issue, vitualization was invented.

- Physical Server (DELL, HP), (16G RAM + 4CPU)
    - Virtualization (VMWare workstation player, Oracle virtual box), (16G RAM + 4CPU)
        - OS + App (4G RAM + 1CPU)
        - OS + App (4G RAM + 1CPU)
        - OS + App (4G RAM + 1CPU)
        - OS + App (4G RAM + 1CPU)

    All resources are fully utilized.

*/