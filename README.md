# MatlabR2022b automatic installation on the Linux 
## Download the matlab iso 
Put the **R2022b_Linux.iso** file (https://caiyun.139.com/m/i?2f2TfvZkJoTn6  password code:`d9fc` ) in the **/software** folder.
The file structure is as follows.
- software
  - start.sh
  - install.sh
  - installer_input.txt
  - license.lic
  - R2022b_Linux.iso
  - README.md
## Run the sh file
```
chmod +x ./start.sh
./start.sh
```
## Add new toolbox
Please add some toolbox what you want in the **new_installer_input.txt**.
Then run the new sh file add_new_package.sh.
