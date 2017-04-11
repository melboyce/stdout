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
