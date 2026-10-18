package ALU_operands_pkg;
typedef enum bit [3:0] { add, sub, Mult, div, anding, oring, nanding, noring, xoring, xnoring, cmp_eq, cmp_G, cmp_L, shift_R, shift_L, no_op } func_val;
    class ALU_operands;
        
        rand logic unsigned [7:0] A_c,B_c;
        rand func_val func_c;
        
        // constraints for randomization
        constraint alu_no_op{
            func_c != no_op;
        }
        
        constraint divide {
            if (func_c == div) {
                B_c != 0;
                A_c % B_c == 0;            
            }
        }

    endclass
endpackage

