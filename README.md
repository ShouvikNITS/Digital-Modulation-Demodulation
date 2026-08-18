# Digital Modulation and Demodulation Simulation

## Overview
This repository contains MATLAB scripts that simulate and visualize fundamental digital signal modulation and demodulation techniques. The project demonstrates the transmission and recovery of digital data using Amplitude Shift Keying (ASK), Frequency Shift Keying (FSK), and Phase Shift Keying (PSK).

## Key Features
*   **Amplitude Shift Keying (ASK):** Modulates a randomized 8-bit sequence by switching the amplitude of a 5 Hz carrier wave. Includes a correlation-based demodulation process to recover the original bit stream.
*   **Frequency Shift Keying (FSK):** Implements modulation by shifting between a 5 Hz and a 10 Hz carrier signal based on the binary input. The demodulator compares the signal energy across both frequencies to determine the received bit.
*   **Phase Shift Keying (PSK):** Modulates the signal by inverting the phase of a 3 Hz carrier wave to represent different binary states. Recovers the data using a multiplier and integrator approach.
*   **Signal Visualization:** Generates comprehensive subplots for each technique, displaying the original bit sequence, unmodulated carrier waves, the modulated transmitted signal, and the successfully recovered data bits.

## Prerequisites
*   MATLAB environment for running the `.m` scripts and rendering the graphical plots.

## How to Use
1.  Ensure you have MATLAB installed.
2.  Clone this repository to your local machine.
3.  Open the desired modulation script (e.g., `ASK_mod.m`, `FSK_mod.m`, or `PSK_mod.m`) in the MATLAB editor.
4.  Run the script to generate the simulation plots.
