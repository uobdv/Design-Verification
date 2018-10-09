---
title: Writing testbenches with Specman
---

## Writing testbenches with Specman

### Q: How to colorize Specman keywords in an editor?

Emacs users please see: [http://www.specman-mode.com/specman-mode.html](http://www.specman-mode.com/specman-mode.html)

### Q: How can I configure Specman so that a random seed is used for test data generation?

Extend the `setup()` method in `calc1_sn_env.e` to include the line: `set_config(gen, seed, random);`

### Q: Which loop functions are available in e language? How to use them?

```
while bool-exp [do] {action;?}
```

```E
while a < b {
    a += 1;
};
```

```
repeat {action;?} until bool-exp
```

```E
repeat {
    i += 1;
} until i == 3;
```

```
for each [type] [(item-name)] [using index (index-name)] in [reverse] list-exp [do] {action;?}
```

```E
type book_type: [AA, BB];

struct book {
    kind : book_type;
    when AA book {
        act() is {
            outf("AA: ");
        };
    };

    when BB book {
        act() is {
            outf("BB: ");
        };
    };
};

extend sys {
    book_list[20] : list of book;

    run is also {
        for each AA book (n) in book_list {
            out(index);
            n.act();
        }

        for each BB book (n) in book_list do {
            out(index);
            n.act();
        }
    };
};
```

```
for var-name from from-exp [down] to to-exp [step step-exp] [do] {action;?}
```

```E
for i from 40 down to 0 step 2 do {
    out(i);
};
```

```
for {initial-action; bool-exp; step-action} [do] {action;?}
```

```E
for { {i=40; j=0}; i>=0; {i-=2; j+=1} } do {
    outf("%b : %d",i,j);
};
```

**Please refer to the e language reference guide for more details.**

