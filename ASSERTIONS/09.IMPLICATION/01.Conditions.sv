Implication operators (|->, |=>) belong in PROPERTIES, not in SEQUENCES.

sequence → describes temporal behavior / patterns

property → applies implication (rules, cause–effect)


  Sequence = pattern in time
Property = rule / requirement

  ✅ What BELONGS inside a sequence

A sequence describes temporal ordering of events.
It answers: “What happens, and in what order?”

✔ Allowed in sequence
🔹 Boolean expressions
a
(a && b)
!c

🔹 Temporal operators
##1          // 1-cycle delay
##[1:3]     // delay range
[*3]        // repetition
[->1]       // goto repetition

🔹 Sequence composition
s1 ##1 s2
s1 or s2
s1 and s2

🔹 Event sampling (allowed)
@(posedge clk)
$rose(a)
$fell(b)
$stable(c)
$changed(d)


These return boolean events, so they are valid patterns.

🔹 Sequence calls
sequence s2;
  s1 ##1 a;
endsequence

❌ What does NOT belong inside a sequence

These are rule-level constructs, not patterns.

🚫 Implication operators
|->    // overlapping implication
|=>    // non-overlapping implication


❌ These define requirements, so they belong in properties.

🚫 if / else
if (a) b;   // ❌

🚫 Action blocks
$display(...)
$error(...)

🚫 Assertions
assert (...)

🚫 Standalone $past
$past(a)   // ❌ (value, not event)

✅ What BELONGS inside a property

A property defines what must be true.

✔ Allowed in property
🔹 Implication operators (MOST IMPORTANT)
a |-> b    // same cycle
a |=> b    // next cycle

🔹 Sequences
s1 |-> s2

🔹 Boolean expressions
(a && b) || c

🔹 Temporal operators
##1
##[1:5]

🔹 $past (correct usage)
a == $past(a)
$past(req) |-> ack

🔹 Clocking event
@(posedge clk)

🔹 Disable conditions
disable iff (reset)

❌ What does NOT belong inside a property
🚫 Procedural code
always
initial

🚫 Assignments
a = b;

🚫 Timing delays
#10

🚫 begin/end blocks



“Sequences describe temporal patterns, while properties apply implication to enforce rules on those patterns.”
