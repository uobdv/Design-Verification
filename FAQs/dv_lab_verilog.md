## Writing testbenches with Verilog

### Q: How to colorize Verilog keywords in an editor?

Emacs users please see: [http://www.verilog.com/emacs_install.html](http://www.verilog.com/emacs_install.html)

### Q:When declaring a vector in Verilog, can we use [LSB:MSB] to represent the big-endian convention?

Vectors can be declared at `[high#,low#]` or `[low#,high#]`, but the left number in the squared brackets is always the MSB of the vector. `[MSB:LSB]`

Both MSB constant expression and LSB constant expression shall be constant expressions of any integer value - positive, negative, or zero. LSB constant expression can be a greater, equal, or lesser value than MSB constant expression.

To use the little-endian convention, set the LSB to the smallest bit number.

```verilog
output [7:0] result;
```

To use the big-endian convention, set the LSB to the largest bit number.

```verilog
inout [0:15] data_bus;
```

### Q: Is it possible to use a variable to specify the range of a vector

The range referencing in an expression must be a constant. Single bit can be referenced with a variable, but a vector cannot.

```verilog
reg [0:7] A, B;
B = 3;
A[0:B] = 3'b111;       // illegal
A[B] = 1'b1;
```

The following example is, however, legal. The parameter statement allows the programmer to give constants a name and serves a similar role that the const keyword serves in C.

```verilog
parameter size = 8;
reg [size - 1:0] A;       // defines an 8-bit register
```

### Q: Why my signed number calculation returned an incorrect number?

Integer numbers are signed (two's complement) or unsigned. Verilog only "keeps track" of the sign of a negative constant if it is 

1. Assigned to an integer,
2. Assigned to a parameter without using a base

In other cases, even though the bit representations may be identical to the signed number (hexadecimal fffffff4 in the following example), a negative constant is treated as an unsigned number. Once Verilog "loses" the sign, keeping track of signed numbers becomes your responsibility.

```verilog
module negative_numbers;
   parameter PA = -12, PB = -'d12, PC = -32'd12, PD = -4'd12;
   integer IA , IB , IC , ID ;
   reg [31:0] RA , RB , RC , RD ;
   initial begin #1;
      IA = -12; IB = -'d12; IC = -32'd12; ID = -4'd12;
      RA = -12; RB = -'d12; RC = -32'd12; RD = -4'd12; #1;
      $display(" parameter integer reg[31:0]");
      $display ("-12 =",PA,IA,,,RA);
      $displayh(" ",,,,PA,,,,IA,,,,,RA);
      $display ("-'d12 =",,PB,IB,,,RB);
      $displayh(" ",,,,PB,,,,IB,,,,,RB);
      $display ("-32'd12 =",,PC,IC,,,RC);
      $displayh(" ",,,,PC,,,,IC,,,,,RC);
      $display ("-4'd12 =",,,,,,,,,,PD,ID,,,RD);
      $displayh(" ",,,,,,,,,,,PD,,,,ID,,,,,RD);
   end
endmodule
```

Output:

| verilog | parameter | integer | reg[31:0] |
|-|-----------|---------|-----------|
| -12 | -12 | -12 | 4294967284 |
| | fffffff4 | fffffff4 | fffffff4 |
| -'d12 | 4294967284 | -12 | 4294967284 |
| | fffffff4 | fffffff4 | fffffff4 |
| -32'd12 | 4294967284 | -12 | 4294967284 |
| | fffffff4 | fffffff4 | fffffff4 |
| -4'd12 | 4 | -12 | 4294967284 |
| | 4 | fffffff4 | fffffff4 |
   

### Q: Which loop functions are available in Verilog? How to use them?

Repetition in Verilog can be implemented via for loop, while loop, and repeat statement.

```verilog
for(i=0; i < 10; i = i+1)        // No ++ or -- in Verilog
   begin
   $display("i = %0d", i);
end
```

```verilog
i = 0;
while(i < 0)
   begin
   $display("i = %0d", i);
   i = i + 1;
end
```

```verilog
i = 0;
repeat(10)
   begin
   $display("i = %0d", i);
   i = i + 1;
end
```

The above three examples all produce the same result.


### Q: Is it possible to specify tasks in one module and then invoke it from other modules?

Just like the Procedure and Sub-routine in the other programming language, in Verilog, many lines of code can be grouped together and called anywhere from within that module. This is called `task` in Verilog. Tasks are local to modules. It must be declared outside any `begin..end` statements of the `module`, but within the `module` declarations. Task must be defined in the module in which they are used. It is possible to define task in a separate file - only if you do not put it in another module!

```verilog
// file name: a_task.v
task add;

   input [7:0] a;
   output [7:0] b;

   begin
      b = a + 100;
   end

endtask
```

```verilog
module add_100 (temp_a, temp_b);

   input [7:0] temp_a;
   output [7:0] temp_b;
   reg [7:0] temp_b;
   `include "a_task.v"      //

   always @ (temp_a)
      add (temp_a, temp_b);

endmodule
```
 

### Q: How to call a task inside a task?

If you want to call a `task` inside a `task`, the declarations can be anywhere except being nested within a procedural block.

```verilog
module nested;

   task foo;                  //declare foo
      begin
         $display("foo");
      end
   endtask

   task bar;
      begin
         $display("bar");
         foo;                  //call task foo from within another task
      end
   endtask

   initial
      bar;

endmodule
```

### Q: [How to write Verilog "glue" logic?](glue)

### Q: [How to generate random numbers in Verilog?](random)

 

