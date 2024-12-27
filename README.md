# VLSI-Digital-Alarm
VLSI-Based Digital Alarm Clock Design and Simulation

## Overview
This project demonstrates the design, simulation, and implementation of a digital alarm clock using VLSI principles. The alarm clock is implemented in Verilog and verified using simulation tools like Logisim and ModelSim. It is optimized for deployment on FPGA boards with 7-segment displays.

## Features
- **Graphical Circuit Design:** Logic design in Logisim, converted to Verilog.
- **Functional Simulation:** Verified correctness using ModelSim.
- **FPGA Compatibility:** Precompiled code for FPGA boards.
- **Alarm and Time Management:** Set alarms and display current time with AM/PM functionality.
- **Visualization:** Includes timing diagrams for simulation insights.

## Tools and Technologies
- **Logisim:** Graphical design tool for schematic creation.
- **ModelSim:** Simulation software for timing and functionality verification.
- **Intel Quartus:** Used for FPGA synthesis and deployment.
- **Verilog:** Hardware Description Language for circuit logic.

## Usage
1. Open the provided Verilog files in Intel Quartus.
2. Load the project onto an FPGA board with 7-segment displays.
3. Set time and alarms using the predefined input configurations.
4. Simulate the functionality in Logisim or ModelSim for verification.

## Files Included
- `main.v`: Main Verilog module for the digital alarm clock.
- `ClockComponent.v`: Logic for clock synchronization.
- `BCD_to_7seg.v`: Module for converting binary-coded decimals to 7-segment display outputs.
- `TopLevelShell.v`: Wrapper module for integration and testing.
- Simulation diagrams and design schematics.

## Getting Started
### Prerequisites
- Intel Quartus (Version X.X or later)
- ModelSim simulation environment
- Logisim software for initial design inspection

### Steps
1. Clone this repository.
2. Open the Verilog files in the specified tools.
3. Run the simulations to verify logic and timing diagrams.
4. Deploy the compiled design onto an FPGA for physical testing.

## Results
Detailed timing diagrams and screenshots of the simulation are included to validate the alarm clock functionality, including time-loading, alarm-setting, and display operations.

## Contributing
Contributions and improvements are welcome. Please fork the repository and submit a pull request with your enhancements.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author
- Saivineeth Suram (Z23704703)
