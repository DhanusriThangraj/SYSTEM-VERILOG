//implicit bins

maximum 64 autobins will be created by default.(auto_bin_max=64)



variable <= 6 bits-->autobins = 2^variable_data_width



variable > 6 bits --> 64 autobins --> 1 bin has "(2 variable_data_width)/64" values

ex: logic [7:0] data -->64 autobins --> 1 bin has (2^8)/64 -->256/64 = "4" values


Rule the tool follows

Let the coverpoint have N possible values.

If N ≤ auto_bin_max (64)
→ one bin per value

If N > auto_bin_max (64)
→ exactly 64 bins, values evenly grouped

Mathematically:

Values per bin = N / auto_bin_max
