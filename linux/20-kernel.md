# Kernel

**WIP**


## Hardware Interface (Intel)

### Intel-based Mainboard Layout

```
                       +---------------+
                       |               |
                       |   Intel CPU   |
                       |               |
                       +-------+-------+
                               |
                               | Front-side bus
                               |
+----------------+      +------+-------+      +----------------+
| RAM module     |      |              |      |                |
+----------------+      |              |      |                |
| RAM module     +------+ North Bridge +------+     PCIe       |
+----------------+ DDR  |              |      |                |
| RAM module...  |      |              |      |                |
+----------------+      +------+-------+      +----------------+
                               |
                               | DMI
                               |
+----------------+      +------+-------+      +----------------+
|BIOS (flash mem)+------+              +------+Power Management|
+----------------+      |              |      +----------------+
                        |              |
+----------------+      | South Bridge |      +----------------+
|   SATA ports   +------+              +------+Clock Generation|
+----------------+      |              |      +----------------+
                        |              |
+----------------+      |              |      +----------------+
|    USB ports   +------+              +------+    PCI Bus     |
+----------------+      +--------------+      +----------------+


Source: http://duartes.org/gustavo/blog/post/motherboard-chipsets-memory-map/
```

Both RAM and devices are mapped to memory addresses - the **memory map**
is used by the *North Bridge* to reckon the correct destination depending
on the operation.

Translation of logical addresses into physical addresses depend on the CPU
operating mode:

* real mode (1MB)
* 32bit protected mode (4GB (PAE changes this))
* 64bit protected mode (64GB+)

Check the Intel datasheets and the Intel Software Developer's Manuals.
