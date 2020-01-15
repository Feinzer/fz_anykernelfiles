**Fz Kernel Release for OnePlus One (bacon)**
Linux Version: 3.4.113
Fz Version: 4.3

---
- [Removed CPUQuiet Hotplug driver.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/ab42ff12ae1a9d7eb88785b015dacbc407f92b3d)
    * I might add the driver again and disable it by default in the future.
- [Added Intelli Hotplug driver.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/686cc6ddbbdbbe197c65ed7008978516da20e3e1)
    * Hotplug driver by [faux123](https://github.com/faux123) and optimized some of its parameters.
- [Enabled IPSET.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/b61857dfe991a384d1ab44d59a18a2bbd5e1bcd9)
    * Enabled module per [user request](https://forum.xda-developers.com/showpost.php?p=80669371&postcount=73).
- [Updated installer zip to anykernel3.](https://github.com/Feinzer/fz_kernel_data/commit/a1d040d567e755d532552cf311810d5d30fef001)
    * Installation is now faster and fixed an issue of magisk being uninstalled when flashing the kernel over it.
---

_Going forward, kernel OTA updates will now be handled via [Franco's](https://github.com/franciscofranco/) Kernel Manager app. Users may import the following URL in FKM Flasher to receive updates:_

https://raw.githubusercontent.com/Feinzer/fz_kernel_data/master/ota/release.json
