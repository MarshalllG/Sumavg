# Sumavg

A device should interface with memory and make a computation on vectors, the device should sum the components of 32bit vectors in Q16.16 format and then obtain the average by dividing by the length of the vectors. The device is inserted in an entire system which has a component called dispatcher, that has to handle the request, in case is a memory access or a device access. The request can be for the component sumavg (the device) or for the component memaccess to interact with the memory. Another component is memmux, which has to multiplex the request receiving data from memaccess or the device. 

	constant DATA		: array_of_integers := (10, 15204352, 63111168, 117178368, 16, 50331648, 82116608, 2147483247, 17, 18, 10);
