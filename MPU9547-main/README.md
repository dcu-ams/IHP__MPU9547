# MPU9547-main folders and contents

## analog
- schematic: schematics and testbenches for xschem.
- schematic/simulation: results of top level simulations that take a long time to run. Note the flattened netlist for the toplevel (MPU9547_extracted.cir) is available in the release/netlist folder
- layout: cells relating to the oscillator, its divider and buffer. Seal ring also included as a flattened cell with the correct area indicated on TEXT.Drawing layer. A modified version of IOPadIOVdd to correct an 0.05um misalignment of a row of CNT.

## digital
- Z80-core: librelane files for reduced functionality Z80 core

## package
- Bonding diagrams for QFN32 (5 mm x 5 mm) in gds and png formats.

## toplevel
Please note the toplevel gds for MPU9547 is provided in the release folder
- logos: For the toplevel gds
- pdn: Power distribution network