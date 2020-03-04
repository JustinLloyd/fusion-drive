Create a macOS Fusion drive from a RAM disk and an SSD backing store.

This script creates a tiered storage of a RAM disk and an SSD backing store. It permits large build projects, e.g. games built by Unity3D in a CI/CD to be accelerated as though they existed on a RAM disk for frequently accessed data,  but stored on a larger SSD because there is too much data that could fit in a RAM disk.

The Fusion Drive, because it is a tiered solution will not survive a reboot. Power loss or rebooting macOS will cause all contents of the Fusion Drive to be lost and 100% unrecoverable.

