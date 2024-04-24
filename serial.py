import serial
def sendcmd(ser, cmd, data):
    # ser: serial port
    # cmd: integer
    # data: array of integers
    tosend = bytearray([cmd] + data) # convert an array of integers to a bytearray
    ser.write(tosend)
    resp = ser.read(5) # read answer and 4 bytes
    answer = bytearray(resp)
    answ = answer[0]
    result = [x for x in answer[1:]] # convert to an array of integers
    return answ, result

ser = serial.Serial(baudrate = 115200, parity = serial.PARITY_EVEN, \
                    stopbits = serial.STOPBITS_ONE, bytesize = serial.EIGHTBITS, \
                    timeout = None, port = '/dev/ttyACM1') # use the actual device name

(a, r) = sendcmd(ser, 1, [0x01, 0x02, 0x03, 0x04]) # RUN 0x01020304
print(a) # should print 129 (OK)

(a, r) = sendcmd(ser, 2, [0, 0, 0, 0]) # INFO (data are not meaningful)
print(a)

(a, r) = sendcmd(ser, 4, [0, 0, 0, 0]) # GETRES
print(a, r)

ser.close()