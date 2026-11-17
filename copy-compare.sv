// Code your testbench here

// COPY and COMPARE 2 dynamic arrays.

module dynamic_array_copy_compare;
  
  // declare 2 array
  int aar1[];
  int aar2[];
  
  initial begin
    // allocate memory for first array
    aar1 = new[5];
    // Insert values into first array
    aar1 = {10, 20, 30, 40, 50};
    // copy aar1 to aar2
    aar2 = new[aar1.size()];
    aar2 = aar1;
    // Compare both arrays
    if (aar1 == aar2)
            $display("PASS: Both Arrays are Equal");
        else
            $display("FAIL: Arrays are Different");
    // Change one element in arr2
    aar2[2] = 100;
    $display("After Modification:");
    $display("Array 1 = %p", aar1);
    $display("Array 2 = %p", aar2);
    // Compare again
    if (aar1 == aar2)
            $display("PASS: Both Arrays are Equal");
        else
            $display("FAIL: Arrays are Different");

    end

endmodule
