# Parameterized RAM in Verilog (4KB)

This project contains a parameterized RAM module written in Verilog, capable of storing 4096 bytes (4KB) of data. It includes a simple testbench and waveform output for simulation verification.

---

## 📁 Files

| File         | Description                            |
|--------------|----------------------------------------|
| `ram.v`      | Parameterized RAM module               |
| `tb_ram.v`   | Testbench for RAM simulation           |
| `waveform.png` | Output waveform from Vivado simulation |

---

## 🧠 Features

- Configurable RAM size (default: 4096 x 8 bits)
- Separate read/write ports
- Fully synthesizable (tested in Vivado)
- Simulated using Vivado XSIM

---

## 🛠️ Requirements

- Vivado (tested with version 2025.1)
- Basic knowledge of Verilog HDL

---

## 📷 Output

Simulation waveform:

![Waveform](waveform.png)

---

## 📌 Author Notes

- Self-taught implementation
- Synthesized without FPGA
- Designed as part of personal VLSI learning journey

---

## ⚙️ Future Plans

- Add support for memory initialization from file
- Expand to dual-port RAM
- Integrate into CPU architecture

