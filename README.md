# ***8-BIT-Even-Down-Counter***
## ***Introduction***
This project presents the design and implementation of an 8-bit even down counter using D flip-flops. The 8-bit even down counter is a digital circuit that counts down from a maximum value to a minimum value while considering the binary representation of the numbers. It is an asynchronous counter that decrements its value on each clock cycle where counter counts from 254 to 0 in even decrements. The counter is implemented using 8 D flip-flops. The report includes a detailed description of the design, implementation and working of the counter. The counter is constructed by cascading eight D flip-flops in a chain, where each flip-flop represents one bit of the 8-bit counter. This 8 bit even down counter can be implemented in two ways, ripple-carry design and synchronous design. We have used the ripple-carry design where output of one  D flip-flop is connected as clock to the next D flip-flop. The circuit is designed and implemented using structural Verilog code and verified through OOP based testbench.

## ***What is 8-BIT-Even-Down-Counter?***
 An 8-bit even down counter is a sequential circuit that counts down from 254 to 0 in even decrements. It is implemented using 8 D flip-flops, with the Q’ output of each flip-flop connected to the D input of the same flip-flop. First D Flip-Flop is the LSB bit and the last D Flip-Flop is the MSB bit. The 8 bit even down counter can be used to count the number of even pulses in a signal, to measure the duration of an even interval, or to generate a sequence of even numbers. The counter can be implemented using a variety of logic gates, but it is most implemented using D flip-flops. This is because D flip-flops are easy to implement and they are very reliable. 
To test the functionality of the counter, OOP (Object Oriented Programming) based test bench is designed. The 8-bit even down counter consists of eight flip-flops, with each flip-flop representing one bit of the counter. These flip-flops are connected in a cascading fashion, with the output of each flip-flop being connected to the clock input of the next flip-flop in the sequence. When the counter receives a clock pulse, it decrements its current value by two, effectively counting down in even numbers. For example, if the counter is initialized with a value of 10011010 in binary, it will sequence through the following states: 10011010→ 10011000→ 10010110→ 10010100→......→00000010→0000000.
The 8-bit even down counter is a valuable component in digital systems, allowing for precise counting down in even numbers. Its versatility and ease of implementation make it a popular choice in various applications where controlled sequencing and timing are required. Whether in microcontrollers, digital signal processing, or control circuits, the even down counter plays a significant role in enhancing the efficiency and functionality of digital systems.


## ***Design and Implementation***
### ***8-BIT-Even-Down-Counter*** ###
![image](https://github.com/tusharshenoy/8-BIT-Even-Down-Counter/assets/107348474/896958ce-192b-43ae-b04f-bdd0b448c5e4)
<br>

### ***8-BIT-Even-Down-Counter state diagram*** ###
![image](https://github.com/tusharshenoy/8-BIT-Even-Down-Counter/assets/107348474/63b31d6a-9b82-46c5-8d9c-8847388a6f48)


## ***Tech Stack***
[Vivado ML Edition - 2023.1](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2023-1.html) used to implement the code.

## ***Working***

8 bit even down counter will count numbers from 254 to 0 downwards. Since this is a 8 bit counter 8 D Flip-Flops are used. The D flip-flop is a type of sequential circuit with data input D and two outputs Q and Q’. Leftmost D Flip-Flop in block diagram is the LSB Bit and the rightmost D Flip-Flop is the MSB Bit. Clock and Reset are the inputs. Since this is an even counter the LSB bit should be zero so the output Q0 is given as data input. Clock is given to the second Flip-Flop and Q1’ is given to data input of the same Flip-Flop. Q1 is given as clock for the next Flip-Flop. Hence it becomes asynchronous. Same process continues for the remaining Flip-Flop. Active high reset is given to the circuit and it is common for all the Flip-Flops. When the reset is high, output Q of all Flip-Flops goes low. When the reset goes low circuit starts operating as a down counter which utilizes D flip-flops as the fundamental building blocks to achieve this functionality. The output of first D Flip-Flop remains unchanged irrespective of the given reset whereas the output of other D Flip-Flops are changed with respect to positive edge of the clock given.


![image](https://github.com/tusharshenoy/4-BIT-Johnson-Counter/assets/107348474/e6b54667-ae5f-41c6-afa3-34fde4f3ff9e)

![image](https://github.com/tusharshenoy/8-BIT-Even-Down-Counter/assets/107348474/846c1738-41f4-40f2-b2b3-ed5a1a767df1)

<br>

##	***Results and Discussion*** ##

In this project, we designed a 8-bit even down counter using D flip-flops in Verilog. The counter is capable of counting in descending even sequences and includes an asynchronous reset feature. The designed 8-bit even down counter with asynchronous reset exhibits several key features. It successfully generates a cyclic sequence of binary values: 11111110,11111100,11111010......00000000. The counter's operation is driven by the clock signal, ensuring synchronous updates of the binary states. With an asynchronous reset capability, it initializes reliably to 0000 when the reset signal is asserted, providing a well-defined starting point for the cyclic sequence. Object-Oriented Programming (OOP) based test bench will validate the counter's behaviour by comparing its outputs against the expected sequence. 8-bit even down counter has potential applications in various domains, including digital signal processing, timer circuits, and synchronous systems that require counting down in even steps. While the design offers promising performance, there remains scope for further optimizations and enhancements in terms of speed and power efficiency.


### ***Waveform*** ###
![image](https://github.com/tusharshenoy/8-BIT-Even-Down-Counter/assets/107348474/967bca34-f8b7-44d8-8b13-caabba36571f)



##	***Conclusion*** ##

The implementation of the 8-bit even number counter using D flip-flops in Verilog has been successful. The structural Verilog code defines the counter's functionality to count down in even numbers from an initial value to zero. The test bench, developed using OOP-based techniques, tests the counter's functionality by comparing the actual output against the expected output values. During simulation, the test bench runs multiple test cases, where the counter is preset to specific initial values, and the results are verified against the expected outputs. The test bench effectively treats the DUT (Device Under Test) as a black box, ensuring that the counter produces correct and accurate results.

##	***References*** ##
[1] "Asynchronous Counter" - Electronics Hub Link:[ https://www.electronicshub.org/asynchronous-counter/](//www.electronicshub.org/asynchronous-counter/)

[2] "Asynchronous Down Counter using D Flip-Flops" - Electronics Stack Exchange Link:[https://electronics.stackexchange.com/questions/223986/asynchronous-down-counter-using-d-flip-flops](//electronics.stackexchange.com/questions/223986/asynchronous-down-counter-using-d-flip-flops)

[3] "Asynchronous Counter Tutorial" - YouTube Video by Neso Academy Link: [https://www.youtube.com/watch?v=ts4g_NUuHAc](//www.youtube.com/watch?v=ts4g_NUuHAc)

[4] "Asynchronous Counter (Part 1)" - YouTube Video by All About Electronics Link: [https://www.youtube.com/watch?v=N2yWk0Dlpt4&t=1s](//www.youtube.com/watch?v=N2yWk0Dlpt4&t=1s)

[5] "Asynchronous Counter (Part 2)" - YouTube Video by All About Electronics Link: [https://www.youtube.com/watch?v=noUcCs2zNaI](//www.youtube.com/watch?v=noUcCs2zNaI)

