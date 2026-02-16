Question 1

“Did a rise at this clock?”

That is an EVENT question
Answer → Yes / No

Question 2

“What was the value of a last clock?”

That is a DATA question
Answer → 0 / 1 / X

Now map this to SVA functions
$rose(a)

Asks an event question

“Did a go 0 → 1 now?”

Returns TRUE or FALSE

That’s why it works alone

@(posedge clk) $rose(a);   // ✔ meaningful

$past(a)

Asks a data question

“What was a last cycle?”

Returns a VALUE

NOT an event







Think of a CCTV camera

$past(e) = looking at yesterday’s recording

$rose(e) = detecting someone entering the room



Clocking defines WHEN sampling happens.
$past defines WHAT value is sampled.
Sequences require EVENTS, not VALUES.


“Even with a clocking event, $past cannot stand alone in a sequence because it returns a value, not an event; 
  sequences describe event patterns, while $past only provides historical data.”
