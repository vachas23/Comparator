module fourbitcomp(x,a,b);
    input [3:0]a,b;
    output [1:0] x;
    reg [1:0]x;
    always@(a,b)
    begin
        if((a[3]==b[3])&&(a[2]==b[2])&&(a[1]==b[1])&&(a[0]==b[0]))
        x<=2'b00;
        else if((a[3]>b[3])||(a[2]>b[2])||(a[1]>b[1])||(a[0]>b[0]))
        x<=2'b01;
        else if ((a[3]<b[3])||(a[2]<b[2])||(a[1]<b[1])||(a[0]<b[0]))
        x<=2'b10;
    end
endmodule
