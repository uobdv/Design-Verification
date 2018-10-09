## How to generate random numbers in Verilog?

Verilog has a system call (`$random`) that handles this. It returns a signed 32 bit integer. It is used as follows:

```verilog
module rand();
    integer mynumber;

    initial begin
	mynumber = $random;
    end
endmodule
```

If random numbers in a certain range are required, this can be achieved with the following code:

```verilog
module rand();
    integer mynumber;

    initial begin
	mynumber = {$random} %10 ; // random numbers between 0 and 9.
    end
endmodule
```


