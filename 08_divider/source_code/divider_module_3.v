module divider_module_3(
    input CLK,
    input RSTn,
    
    input Start_Sig,
    input [7:0]Dividend,
    input [7:0]Divisor,
    
    output Done_Sig,
    output [7:0]Quotient,
    output [7:0]Reminder
    );

    /*****************************/

    reg[3:0]i;
    reg[7:0]Dend;
    reg[7:0]Dsor;
    reg[7:0]Q;
    reg[7:0]R;
    reg isNeg;
    reg isDone;

    always @(posedge CLK or negedge RSTn)
        if(!RSTn)
            begin
                i<=4'd0;
                Dend<=8'd0;
                Dsor<=8'd0;
                Q<=8'd0;
                isNeg<=1'b0;
                isDone<=1'b0;
            end
        else if(Start_Sig)
            case(i)
            
            0:
            begin
                Dend<=Dividend[7]?~Dividend+1'b1:Dividend; //取被乘数正值
                Dsor<=Divisor[7]?Divisor:(~Divisor+1'b1); //负数的补码
                isNeg<=Dividend[7]^Divisor[7];
                Q<=8'd0;
                i<=i+1'b1;
            end
            
            1:
            if(Divisor>Dend) begin
                Q<=isNeg?(~Q+1'b1):Q;
                i<=i+1'b1;
            end
            else begin
                Dend<=Dend+Dsor;
                Q<=Q+1'b1;
            end
            
            2:
            begin isDone<=1'b1;i<=i+1'b1; end
            
            3:
            begin isDone<=1'b0;i<=4'd0;end
            
            endcase

    /********************/

    assign Done_Sig=isDone;
    assign Quotient=Q;
    assign Reminder=Dend;

endmodule

