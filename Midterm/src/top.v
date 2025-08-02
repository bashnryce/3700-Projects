`timescale 1ns/1ps

module top(
    input clk,
    input rst,
    input [3:0] keypad_row, 
    input [7:0] sw,             //for volume
    input power,                //power button
    output [3:0] keypad_col,
    output AIN,             //serial output for amp
    output GAIN,            //set to 1
    output reg SHUTDOWN_L       //on off switch for amp
);

    wire rst_l;
    assign rst_l = ~rst;

    wire [15:0] keys;
    wire PWMshut;
    wire power_db;
    reg power_shut;

    initial begin
        //AIN = 0;
        //GAIN = 1;
        SHUTDOWN_L = 0;
        power_shut = 0;
    end

    keypad KP1 
    (
        .clk(clk),
        .rst_l(rst_l),
        .row(keypad_row),
        .col(keypad_col),
        .keys(keys)
    );

    audio_top PWM1 
    (
        .clk(clk),
        .rst_l(rst_l),
        .keys(keys),
        .volume(sw),
        .AIN(AIN),
        .GAIN(GAIN),
        .SHUTDOWN_L(PWMshut)
    );

    debouncer DB1 
    (
        .clk(clk),
        .rst_l(rst_l),
        .btn(power),
        .btn_db(power_db)
    );

    always @(posedge clk) begin

        if(power_db) begin
            power_shut <= ~power_shut;
        end

        SHUTDOWN_L <= power_shut && PWMshut;

    end





endmodule