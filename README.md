# Photodiode-acquisition-board
arduino-based board two-channel photodiode amplifier and acquisition board

Transimpedance amplifier based on an OPA2336 op amp, with gain of 100kV/A and a bandwidth of ~265Hz with supply voltage of 3.3v

ADC is an ads1115 2/4 channel 16/15bit (differential/single ended mode) converter with built in voltage reference and PGA giving selectable full scale ranges of {0-256mV, 0-512mV, 0-1024mV, 0-2048mV, 0-4096mV, 0-6144mv}. Sample rate is up to 860Hz.

Readout can be done by a computer supporting a virtual usb device provided by an arduino at 2Mbaud thorugh the following commands:
gain=x  , x={2/3,1,2,4,8,16} or ? sets the gain to x, or if ? prints the current gain.

read=x , x={0,1,2,3}, Gets a single conversion from channel x

continuous conversion may be set up as follows(where the ADC is set to convert the channels selected sequentially, and automatically push the results to the com-port):

conty=b , y={0,1,2,3}, b={0,1}, such that cont0=1 enables continuos conversion on channel 0.
startc                          starts continuous conversion mode
stopc                           stops continuous conversion mode

make sure to set the desired channels to the correct state before starting the continuous conversion mode.

This functionality is also exposed to a labview interface in the vi-s included in this repository
