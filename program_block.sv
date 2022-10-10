module DUT();
reg a = 0;
initial begin
  a<= 1;
end
endmodule

module TB_using_Module();
initial begin
  $display("");
  $display("\t Module_based_TB : a = %b\n", DUT.a);
end
endmodule


program TB_using_Program();
  initial begin
    $display("\t Program_based_TB : a = %b\n", DUT.a);
  $display("");
  end
endprogram

