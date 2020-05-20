**Fz Kernel Release for OnePlus One (bacon)**
Linux Version: 3.4.113
Fz Version: 4.4

---
- [Re-added CPUQuiet Hotplug driver.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/7fc293cdc4568f829b8dc38245acda2d6afa1b63)
    * It seems to give better results anyway so I'll keep it as default.
- [Re-added maple I/O Scheduler.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/1c941cb15c2a3bea6a673b32547fca309c35701a)
    * Seems like it works properly now.
- [Enabled Auditing.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/cb2fad89b7366d9fb047e889340d3ace3c2ecd01)
    * Enabled so users can report denials now that we're using enforcing on ROMs.
- [Set CFQ as default I/O Scheduler.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/bc0852a548b124084ebb248a1eea810f080c7a6e)
    * It gives the best results on both reads and writes on my testing.
- [Added Bricked Hotplug driver.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/1fac7456cffb0e4370f7b812bc276ff9c162d80d)
    * And some tweaks to the parameters by [Tommaso Fonda](https://github.com/Tomoms).
- [Added blu_active governor.](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/13fd142f6053cd52f3eb6161718f7c75d5436c98)
    * And some tweaks to the parameters by [Tommaso Fonda](https://github.com/Tomoms).
- [Update zen I/O Scheduler to 1.1](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/commit/bad0fc68470a42533dda5a47f81df9ecd2261daa)
    * Minor changes.
- [Some internal optimizations](https://github.com/Feinzer/fz_kernel_oneplus_msm8974/tree/v4.4)
    * See commit history to see them all.
---

_Going forward, kernel OTA updates will now be handled via [Franco's](https://github.com/franciscofranco/) Kernel Manager app. Users may import the following URL in FKM Flasher to receive updates:_

https://raw.githubusercontent.com/Feinzer/fz_kernel_data/master/ota/release.json
