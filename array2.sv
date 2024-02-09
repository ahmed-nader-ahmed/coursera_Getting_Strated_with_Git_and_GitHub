module top;
    // Q1
    struct {
        string a;
        // event
        real c;
        logic [2:0] d;
    } unpacked_structure [string];
    // Q2
    struct {
        string a;
        // event
        real c;
        logic [2:0] d;
    } unpacked_structure_2 [*];
    // Q3
    string queue [$];
    initial begin
        // Q1
        unpacked_structure ["hi"]  = '{a:"hiaaa", c:1.333, d:3'd1};
        unpacked_structure ["hello"] = '{a:"helloaaa", c:2.333, d:3'd2};
        unpacked_structure ["hey"] = '{a:"heyaaa", c:3.333, d:3'd3};
        // Q2
        unpacked_structure_2 ["hi"]  = '{a:"hiaaa", c:1.333, d:3'd1};
        unpacked_structure_2 ["hello"] = '{a:"helloaaa", c:2.333, d:3'd2};
        unpacked_structure_2 ["hey"] = '{a:"heyaaa", c:3.333, d:3'd3};
        // Q3
        queue.push_front("hiiiiiiiiiiiiiiiii");
        queue.push_front("byeeeeeeeeeeeeeeee");
        queue.pop_front();
    end
endmodule
