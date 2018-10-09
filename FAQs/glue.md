## Gluing code together in Verilog

Verilog glue logic is simple but it has a few restrictions.

First, let us create a `simple` module with one `input` named `in_a` and two `output`s named `out_b`/`out_c`, as shown below:

```verilog
module simple (in_a, out_b, out_c);

    input in_a; // if a type is not mentioned then it defaults to wire
    output out_b; // so this is a wire
    output reg out_c; // and this is a reg

    // some logic here

endmodule
```

Now let us create another module that will instantiate our `simple` module. We will call it `top`. From `top`'s point of view, `in_a`, `out_b`, and `out_c` behave differently, regardless of what type (`reg` or `wire`) they were originally declared as. What matters is if they are `input`s or `output`s. This limits what you can do: you can drive data into `in_a` because it is an `input`, but you cannot drive data into the `output`s. Here is an example of a valid way to connect `simple` to `top`:

```verilog
module top ();

    wire mya;
    wire myb;
    wire myc;

    assign mya = 0; // assigns can only be used with wires

    simple simple(mya, myb, myc);

endmodule
```

You can have multiple instances of `simple` if you want to. Here is an example:

```verilog
module top ();

    wire mya;
    wire myb;
    wire myc;
    wire myd;
    wire mye;

    assign mya = 0;

    simple simple1 (mya, myb, myc);
    simple simple2 (mya, myd, mye);

endmodule
```

Note that `mya` can be used to drive two different inputs. That is fine because you still have only one source of data. However, each output of `simple` has to be connected to different wires in `top`, otherwise one wire would end up with two data sources. That is not allowed.

Another valid glue logic is shown below. The difference is that `mya` is now a `reg`. Per verilog assignment rules, you cannot use the assign keyword with `reg`s. One must use an `always` statement as shown below. This example is functionally identical to the one using `assign`.

```verilog
module top ();

    reg mya;
    wire myb;
    wire myc;

    always @ (*) begin
        mya = 0;
    end

    simple simple(mya, myb, myc);

endmodule
```

