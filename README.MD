# Patches for UNIBIOS 4.0

- UNIBIOS created by [Razoola](http://unibios.free.fr)
- Initial patch by [ArcadeTV](https://github.com/ArcadeTV/neogeo-menu)
- Multicart by [Vortex](https://github.com/xvortex/VTXCart)
- PICKnMIX for Vortex carts patch by [zardam](https://github.com/zardam)

## Patching

1. Obtain the [UNIBIOS 4.0 ROM](http://unibios.free.fr/download/uni-bios-40.zip).
2. Use xdelta3 to patch your UNIBIOS 4.0 ROM for PICKnMIX

## [uni-bios_4_0_PICKnMIX.xdelta](uni-bios_4_0_PICKnMIX.xdelta)

Example syntax to apply the patch: 

xdelta3 -d -s uni-bios.rom uni-bios_4_0_PICKnMIX.xdelta uni-bios-pnm.rom

This patch enables PICKnMIX feature for a custom 161in1 cart, with some limitations:
- Always boots to PICKnMIX, even with a normal game cartridge.
- Works on MVS only (backup RAM used to store soft dips).
- No high score save.
- Tested on a MV1FZ only.
- Game list (titles and order) is hardcoded. The custom 161in1 cart must have been created with this one: [uni-bios_4_0_PICKnMIX.csv](uni-bios_4_0_PICKnMIX.csv).
- Use at your own risk!
