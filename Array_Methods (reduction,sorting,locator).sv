// Code your testbench here

// ****** Array Mathods EXAMPLES ******* /

// Array Reduction Methods

module array_reduction;
  
  int data[5] = {10, 20, 30, 40, 50};
  
  initial begin
    $display("Array = %p", data);
    // sum of all elements
    $display("Sum = %0d", data.sum());
    // Multiplication of all elements
    $display("product = %0d", data.product());
    // Bitwise AND
    $display("AND = %b", data.and());

        // Bitwise OR
        $display("OR = %b", data.or());

        // Bitwise XOR
        $display("XOR = %b", data.xor());

    end

endmodule

// Array Sorting Methods


module array_sorting;

    int data[5] = '{30, 10, 50, 20, 40};

    initial begin

        $display("Original = %p", data);

        // Sort in ascending order
        data.sort();
        $display("sort() = %p", data);

        // Sort in descending order
        data.rsort();
        $display("rsort() = %p", data);

        // Reverse the array
        data.reverse();
        $display("reverse() = %p", data);

        // Randomly rearrange elements
        data.shuffle();
        $display("shuffle() = %p", data);

    end

endmodule   

// Array Locator Methods

module array_locator;
  int data[5]= {30, 10, 50, 20, 40};
  int result[$];
  int index_result[$];
  
  initial begin
    // find all values greater then 25
    result = data.find() with (item > 25);
    $display("find() = %p", result);
    
    // find indexes of all values greater then 25
    index_result = data.find_index() with (item > 25);
    $display("find_index() = %p", index_result);
    
    // Find last matching value
    result = data.find_last() with (item > 25);
    $display("find_last() = %p", result);
    
     // Find index of last matching value
        index_result = data.find_last_index() with (item > 25);
        $display("find_last_index() = %p", index_result);
    
    
   end

endmodule
