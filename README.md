# InterconNetwork
### Prava Dhulipalla, Kaitlyn Keil, Bryan Werth

#### Computer Architecture 2017
#### Final Project

Networks are commonplace with the rise of the Internet of Things. If your coffeemaker isn’t communicating with your alarm clock to make sure you have a steaming cup before you’ve brushed your teeth, you’re clearly behind the times. And these networks exist on many different levels: from the internet to wireless connections in your home to network switches to multiple processors on a single chip. This last one isn’t as grandiose as being able to argue with someone on the other side of the world, but these interconnection networks are what makes the devices we use to do so run.

For our final project in Computer Architecture, we decided to research and understand more about interconnection networks. The performance of these interconnection networks often serve as an inhibitor in many computer architecture systems, so we decided to a) research interconnection networks and b) implement a very simply interconnection network in Verilog (shown below) in hopes of understanding the system better.

![1D Torus Example](https://github.com/KaitlynKeil/InterconNetwork/blob/master/network_diagram.jpg)

[Process](https://kaitlynkeil.github.io/InterconNetwork/process) [Results](https://kaitlynkeil.github.io/InterconNetwork/results) [Reflection](https://kaitlynkeil.github.io/InterconNetwork/reflection) [Research](https://kaitlynkeil.github.io/InterconNetwork/research)

## Motivation
All three of us took the chance that was given to us for this final, and decided to research something that we all were curious about. For some of us, it boiled down to the fact that we didn’t know anything about interconnection networks - and as a result, decided to use this final project to mitigate that. Additionally, it seemed like an interesting enough topic when first introduced briefly as an idea for a final project, mostly because it seemed like an integral part of computer architecture systems that we haven’t even touched.
After doing additional research on it, it turned out that some of us had actually had a basis in the material, in that we had done research with Siddhartan on his Hybrid-Visible Light RF Communication System - which involved some knowledge of the Open Systems Interconnection model (OSI model) that characterizes the communication functions of a computing system without revealing too much about the structure that actually achieves that purpose.
As for choosing our final deliverables, we were driven by our desire to continue in the spirit of the class, and learn about topologies and interconnection networks by coding one of them. Thus, our MVP deliverable was to create a simple 5-node torus network through Verilog. We also wanted additional familiarity with working with the FPGA, so we made an extra deliverable uploading onto the FPGA - however we understood that this was a trivial step in the process, and thus decided not to make that a part of our main deliverable. Instead, we decided to add the actual researching a part of our deliverable, with the emphasis of making our website the primary method for delivering the results from our various research. 

## Resources

We used a number of resources, which can be found at the below with brief descriptions.

*Principles and Practices of Interconnection Networks* by William James Dally and Brian Towles: This was the main resource utilized by all of the members of the team in order to gain a rudimentary understanding on interconnection networks, specifically torus networks.

The following are research papers that members of our team read to gain a more comprehensive view of torus networks. Specific analysis and descriptions can be found in the results section (as well as specific links).

*Visualizing the Five-dimensional Torus Network of the IBM Blue Gene/Q* by McCarthy, Isaacs, Bhatele, Bremer, Hamann

*Routing Algorithms for Torus Networks* by Upadhyay, Vara Varavithya, and Mohapatra

*Matrix multiplication on multidimensional torus networks* by Solomonik and Demmel

*Reducing the Spectral Radius of a Torus Network by Link Removal* by Yang, Li, and Yang
