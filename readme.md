Create a macOS Fusion drive from a RAM disk and an SSD backing store.

!!!! NOTE !!! RUN THIS SCRIPT AT YOUR PERIL IF YOU DO NOT UNDERSTAND IT

This script creates a tiered storage of a RAM disk and an SSD backing store. It permits large build projects, e.g. games built by Unity3D in a CI/CD to be accelerated as though they existed on a RAM disk for frequently accessed data,  but stored on a larger SSD because there is too much data that could fit in a RAM disk.

This script should be using as a jumping off point for creating your own script. I wouldn't recommend you use this script as-is without understanding what it does to your system.

The Fusion Drive, because it is a tiered solution where a RAM disk acts as the fast tier zero, will not survive a reboot. Power loss or rebooting macOS will cause all contents of the Fusion Drive to be lost and 100% unrecoverable.

This quick and dirty solution is a pale facsimile of PrimoCache by Romex software but for macOS. This is a tiering solution, not a caching solution. It can and will lose data if you turn off your computer. However, it is ideal for build agents and CI/CD build systems that need a boost.

Be very careful with this script as it will destroy all contents on the drive you specify, no questions asked. Before you execute the script, study it very carefully and perhaps try out each step by hand before you just blindly run the code. Alternatively, try using the script inside a virtual machine to test it out.

!!!! NOTE !!! RUN THIS SCRIPT AT YOUR PERIL IF YOU DO NOT UNDERSTAND IT

