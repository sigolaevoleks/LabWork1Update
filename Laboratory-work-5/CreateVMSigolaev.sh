
   #!/bin/bash
   VBoxManage createvm --name "Linux of Sigolaev 3" --ostype Ubuntu_64 --register
   VBoxManage modifyvm "Linux of Sigolaev 3" --cpus 1
   VBoxManage modifyvm "Linux of Sigolaev 3" --memory 2345
   VBoxManage modifyvm "Linux of Sigolaev 3" --vram 134
   VBoxManage modifyvm "Linux of Sigolaev 3" --nic1 nat
   VBoxManage modifyvm "Linux of Sigolaev 3" --natpf1 "SSH,tcp,127.0.0.1,1234,10.0.2.15,22"
   VBoxManage storagectl "Linux of Sigolaev 3" --name "SigolaevSATA" --add sata --controller IntelAHCI
   VBoxManage storagectl "Linux of Sigolaev 3" --name "SigolaevIDE" --add ide --controller PIIX4
   VBoxManage createhd --filename "C:\\Users\\Anwender in\\VirtualBox VMs\\Linux of Sigolaev 3\\DiskSigolaev.vdi" --size 9360
   VBoxManage storageattach "Linux of Sigolaev 3" --storagectl "SigolaevSATA" --port 0 --device 0 --type hdd --medium "C:\\Users\\Anwender in\\VirtualBox VMs\\Linux of Sigolaev 3\\DiskSigolaev.vdi"
   VBoxManage storageattach "Linux of Sigolaev 3" --storagectl "SigolaevIDE" --port 0 --device 0 --type dvddrive --medium "C:\\Users\\Anwender in\\Desktop\\ubuntu-14.04.6-server-amd64.iso"
   VBoxManage startvm "Linux of Sigolaev 3"
   VBoxManage controlvm "Linux of Sigolaev 3" savestate
   VBoxManage startvm "Linux of Sigolaev 3"
   VBoxManage controlvm "Linux of Sigolaev 3" poweroff
   VBoxManage unregistervm "Linux of Sigolaev 3" --delete
