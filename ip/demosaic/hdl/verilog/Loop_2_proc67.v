// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_2_proc67 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_odata_V_bv_V_dout,
        p_odata_V_bv_V_empty_n,
        p_odata_V_bv_V_read,
        p_ouser_V_bv_V_dout,
        p_ouser_V_bv_V_empty_n,
        p_ouser_V_bv_V_read,
        p_olast_V_bv_V_dout,
        p_olast_V_bv_V_empty_n,
        p_olast_V_bv_V_read,
        p_odata_TDATA,
        p_odata_TVALID,
        p_odata_TREADY,
        p_odata_TUSER,
        p_odata_TLAST
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] p_odata_V_bv_V_dout;
input   p_odata_V_bv_V_empty_n;
output   p_odata_V_bv_V_read;
input  [0:0] p_ouser_V_bv_V_dout;
input   p_ouser_V_bv_V_empty_n;
output   p_ouser_V_bv_V_read;
input  [0:0] p_olast_V_bv_V_dout;
input   p_olast_V_bv_V_empty_n;
output   p_olast_V_bv_V_read;
output  [23:0] p_odata_TDATA;
output   p_odata_TVALID;
input   p_odata_TREADY;
output  [0:0] p_odata_TUSER;
output  [0:0] p_odata_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_odata_V_bv_V_read;
reg p_ouser_V_bv_V_read;
reg p_olast_V_bv_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [23:0] p_odata_V_data_V_1_data_out;
reg    p_odata_V_data_V_1_vld_in;
wire    p_odata_V_data_V_1_vld_out;
wire    p_odata_V_data_V_1_ack_in;
wire    p_odata_V_data_V_1_ack_out;
reg   [23:0] p_odata_V_data_V_1_payload_A;
reg   [23:0] p_odata_V_data_V_1_payload_B;
reg    p_odata_V_data_V_1_sel_rd;
reg    p_odata_V_data_V_1_sel_wr;
wire    p_odata_V_data_V_1_sel;
wire    p_odata_V_data_V_1_load_A;
wire    p_odata_V_data_V_1_load_B;
reg   [1:0] p_odata_V_data_V_1_state;
wire    p_odata_V_data_V_1_state_cmp_full;
reg   [0:0] p_odata_V_user_V_1_data_out;
reg    p_odata_V_user_V_1_vld_in;
wire    p_odata_V_user_V_1_vld_out;
wire    p_odata_V_user_V_1_ack_in;
wire    p_odata_V_user_V_1_ack_out;
reg   [0:0] p_odata_V_user_V_1_payload_A;
reg   [0:0] p_odata_V_user_V_1_payload_B;
reg    p_odata_V_user_V_1_sel_rd;
reg    p_odata_V_user_V_1_sel_wr;
wire    p_odata_V_user_V_1_sel;
wire    p_odata_V_user_V_1_load_A;
wire    p_odata_V_user_V_1_load_B;
reg   [1:0] p_odata_V_user_V_1_state;
wire    p_odata_V_user_V_1_state_cmp_full;
reg   [0:0] p_odata_V_last_V_1_data_out;
reg    p_odata_V_last_V_1_vld_in;
wire    p_odata_V_last_V_1_vld_out;
wire    p_odata_V_last_V_1_ack_in;
wire    p_odata_V_last_V_1_ack_out;
reg   [0:0] p_odata_V_last_V_1_payload_A;
reg   [0:0] p_odata_V_last_V_1_payload_B;
reg    p_odata_V_last_V_1_sel_rd;
reg    p_odata_V_last_V_1_sel_wr;
wire    p_odata_V_last_V_1_sel;
wire    p_odata_V_last_V_1_load_A;
wire    p_odata_V_last_V_1_load_B;
reg   [1:0] p_odata_V_last_V_1_state;
wire    p_odata_V_last_V_1_state_cmp_full;
reg    p_odata_V_bv_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i1_reg_147;
reg    p_ouser_V_bv_V_blk_n;
reg    p_olast_V_bv_V_blk_n;
reg    p_odata_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] exitcond_i1_reg_147_pp0_iter1_reg;
reg   [18:0] i_0_i1_reg_124;
wire   [0:0] exitcond_i1_fu_135_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [18:0] i_fu_141_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire    ap_CS_fsm_state5;
reg    ap_block_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 p_odata_V_data_V_1_sel_rd = 1'b0;
#0 p_odata_V_data_V_1_sel_wr = 1'b0;
#0 p_odata_V_data_V_1_state = 2'd0;
#0 p_odata_V_user_V_1_sel_rd = 1'b0;
#0 p_odata_V_user_V_1_sel_wr = 1'b0;
#0 p_odata_V_user_V_1_state = 2'd0;
#0 p_odata_V_last_V_1_sel_rd = 1'b0;
#0 p_odata_V_last_V_1_sel_wr = 1'b0;
#0 p_odata_V_last_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((p_odata_V_data_V_1_ack_in == 1'b0) | (p_odata_V_last_V_1_ack_in == 1'b0) | (p_odata_V_user_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((p_odata_V_data_V_1_ack_out == 1'b1) & (p_odata_V_data_V_1_vld_out == 1'b1))) begin
            p_odata_V_data_V_1_sel_rd <= ~p_odata_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((p_odata_V_data_V_1_ack_in == 1'b1) & (p_odata_V_data_V_1_vld_in == 1'b1))) begin
            p_odata_V_data_V_1_sel_wr <= ~p_odata_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((p_odata_V_data_V_1_state == 2'd2) & (p_odata_V_data_V_1_vld_in == 1'b0)) | ((p_odata_V_data_V_1_state == 2'd3) & (p_odata_V_data_V_1_vld_in == 1'b0) & (p_odata_V_data_V_1_ack_out == 1'b1)))) begin
            p_odata_V_data_V_1_state <= 2'd2;
        end else if ((((p_odata_V_data_V_1_state == 2'd1) & (p_odata_V_data_V_1_ack_out == 1'b0)) | ((p_odata_V_data_V_1_state == 2'd3) & (p_odata_V_data_V_1_ack_out == 1'b0) & (p_odata_V_data_V_1_vld_in == 1'b1)))) begin
            p_odata_V_data_V_1_state <= 2'd1;
        end else if (((~((p_odata_V_data_V_1_vld_in == 1'b0) & (p_odata_V_data_V_1_ack_out == 1'b1)) & ~((p_odata_V_data_V_1_ack_out == 1'b0) & (p_odata_V_data_V_1_vld_in == 1'b1)) & (p_odata_V_data_V_1_state == 2'd3)) | ((p_odata_V_data_V_1_state == 2'd1) & (p_odata_V_data_V_1_ack_out == 1'b1)) | ((p_odata_V_data_V_1_state == 2'd2) & (p_odata_V_data_V_1_vld_in == 1'b1)))) begin
            p_odata_V_data_V_1_state <= 2'd3;
        end else begin
            p_odata_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((p_odata_V_last_V_1_ack_out == 1'b1) & (p_odata_V_last_V_1_vld_out == 1'b1))) begin
            p_odata_V_last_V_1_sel_rd <= ~p_odata_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((p_odata_V_last_V_1_ack_in == 1'b1) & (p_odata_V_last_V_1_vld_in == 1'b1))) begin
            p_odata_V_last_V_1_sel_wr <= ~p_odata_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((p_odata_V_last_V_1_state == 2'd2) & (p_odata_V_last_V_1_vld_in == 1'b0)) | ((p_odata_V_last_V_1_state == 2'd3) & (p_odata_V_last_V_1_vld_in == 1'b0) & (p_odata_V_last_V_1_ack_out == 1'b1)))) begin
            p_odata_V_last_V_1_state <= 2'd2;
        end else if ((((p_odata_V_last_V_1_state == 2'd1) & (p_odata_V_last_V_1_ack_out == 1'b0)) | ((p_odata_V_last_V_1_state == 2'd3) & (p_odata_V_last_V_1_ack_out == 1'b0) & (p_odata_V_last_V_1_vld_in == 1'b1)))) begin
            p_odata_V_last_V_1_state <= 2'd1;
        end else if (((~((p_odata_V_last_V_1_vld_in == 1'b0) & (p_odata_V_last_V_1_ack_out == 1'b1)) & ~((p_odata_V_last_V_1_ack_out == 1'b0) & (p_odata_V_last_V_1_vld_in == 1'b1)) & (p_odata_V_last_V_1_state == 2'd3)) | ((p_odata_V_last_V_1_state == 2'd1) & (p_odata_V_last_V_1_ack_out == 1'b1)) | ((p_odata_V_last_V_1_state == 2'd2) & (p_odata_V_last_V_1_vld_in == 1'b1)))) begin
            p_odata_V_last_V_1_state <= 2'd3;
        end else begin
            p_odata_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_user_V_1_sel_rd <= 1'b0;
    end else begin
        if (((p_odata_V_user_V_1_ack_out == 1'b1) & (p_odata_V_user_V_1_vld_out == 1'b1))) begin
            p_odata_V_user_V_1_sel_rd <= ~p_odata_V_user_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_user_V_1_sel_wr <= 1'b0;
    end else begin
        if (((p_odata_V_user_V_1_ack_in == 1'b1) & (p_odata_V_user_V_1_vld_in == 1'b1))) begin
            p_odata_V_user_V_1_sel_wr <= ~p_odata_V_user_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        p_odata_V_user_V_1_state <= 2'd0;
    end else begin
        if ((((p_odata_V_user_V_1_state == 2'd2) & (p_odata_V_user_V_1_vld_in == 1'b0)) | ((p_odata_V_user_V_1_state == 2'd3) & (p_odata_V_user_V_1_vld_in == 1'b0) & (p_odata_V_user_V_1_ack_out == 1'b1)))) begin
            p_odata_V_user_V_1_state <= 2'd2;
        end else if ((((p_odata_V_user_V_1_state == 2'd1) & (p_odata_V_user_V_1_ack_out == 1'b0)) | ((p_odata_V_user_V_1_state == 2'd3) & (p_odata_V_user_V_1_ack_out == 1'b0) & (p_odata_V_user_V_1_vld_in == 1'b1)))) begin
            p_odata_V_user_V_1_state <= 2'd1;
        end else if (((~((p_odata_V_user_V_1_vld_in == 1'b0) & (p_odata_V_user_V_1_ack_out == 1'b1)) & ~((p_odata_V_user_V_1_ack_out == 1'b0) & (p_odata_V_user_V_1_vld_in == 1'b1)) & (p_odata_V_user_V_1_state == 2'd3)) | ((p_odata_V_user_V_1_state == 2'd1) & (p_odata_V_user_V_1_ack_out == 1'b1)) | ((p_odata_V_user_V_1_state == 2'd2) & (p_odata_V_user_V_1_vld_in == 1'b1)))) begin
            p_odata_V_user_V_1_state <= 2'd3;
        end else begin
            p_odata_V_user_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i1_fu_135_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_i1_reg_124 <= i_fu_141_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i1_reg_124 <= 19'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_i1_reg_147 <= exitcond_i1_fu_135_p2;
        exitcond_i1_reg_147_pp0_iter1_reg <= exitcond_i1_reg_147;
    end
end

always @ (posedge ap_clk) begin
    if ((p_odata_V_data_V_1_load_A == 1'b1)) begin
        p_odata_V_data_V_1_payload_A <= p_odata_V_bv_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((p_odata_V_data_V_1_load_B == 1'b1)) begin
        p_odata_V_data_V_1_payload_B <= p_odata_V_bv_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((p_odata_V_last_V_1_load_A == 1'b1)) begin
        p_odata_V_last_V_1_payload_A <= p_olast_V_bv_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((p_odata_V_last_V_1_load_B == 1'b1)) begin
        p_odata_V_last_V_1_payload_B <= p_olast_V_bv_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((p_odata_V_user_V_1_load_A == 1'b1)) begin
        p_odata_V_user_V_1_payload_A <= p_ouser_V_bv_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((p_odata_V_user_V_1_load_B == 1'b1)) begin
        p_odata_V_user_V_1_payload_B <= p_ouser_V_bv_V_dout;
    end
end

always @ (*) begin
    if ((exitcond_i1_fu_135_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((~((p_odata_V_data_V_1_ack_in == 1'b0) | (p_odata_V_last_V_1_ack_in == 1'b0) | (p_odata_V_user_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((p_odata_V_data_V_1_ack_in == 1'b0) | (p_odata_V_last_V_1_ack_in == 1'b0) | (p_odata_V_user_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond_i1_reg_147_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        p_odata_TDATA_blk_n = p_odata_V_data_V_1_state[1'd1];
    end else begin
        p_odata_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_odata_V_bv_V_blk_n = p_odata_V_bv_V_empty_n;
    end else begin
        p_odata_V_bv_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_odata_V_bv_V_read = 1'b1;
    end else begin
        p_odata_V_bv_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((p_odata_V_data_V_1_sel == 1'b1)) begin
        p_odata_V_data_V_1_data_out = p_odata_V_data_V_1_payload_B;
    end else begin
        p_odata_V_data_V_1_data_out = p_odata_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_odata_V_data_V_1_vld_in = 1'b1;
    end else begin
        p_odata_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((p_odata_V_last_V_1_sel == 1'b1)) begin
        p_odata_V_last_V_1_data_out = p_odata_V_last_V_1_payload_B;
    end else begin
        p_odata_V_last_V_1_data_out = p_odata_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_odata_V_last_V_1_vld_in = 1'b1;
    end else begin
        p_odata_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((p_odata_V_user_V_1_sel == 1'b1)) begin
        p_odata_V_user_V_1_data_out = p_odata_V_user_V_1_payload_B;
    end else begin
        p_odata_V_user_V_1_data_out = p_odata_V_user_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_odata_V_user_V_1_vld_in = 1'b1;
    end else begin
        p_odata_V_user_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_olast_V_bv_V_blk_n = p_olast_V_bv_V_empty_n;
    end else begin
        p_olast_V_bv_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_olast_V_bv_V_read = 1'b1;
    end else begin
        p_olast_V_bv_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ouser_V_bv_V_blk_n = p_ouser_V_bv_V_empty_n;
    end else begin
        p_ouser_V_bv_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_i1_reg_147 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ouser_V_bv_V_read = 1'b1;
    end else begin
        p_ouser_V_bv_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_i1_fu_135_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((exitcond_i1_fu_135_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((p_odata_V_data_V_1_ack_in == 1'b0) | (p_odata_V_last_V_1_ack_in == 1'b0) | (p_odata_V_user_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((exitcond_i1_reg_147 == 1'd0) & (p_olast_V_bv_V_empty_n == 1'b0)) | ((exitcond_i1_reg_147 == 1'd0) & (p_ouser_V_bv_V_empty_n == 1'b0)) | ((exitcond_i1_reg_147 == 1'd0) & (p_odata_V_bv_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((exitcond_i1_reg_147 == 1'd0) & (p_olast_V_bv_V_empty_n == 1'b0)) | ((exitcond_i1_reg_147 == 1'd0) & (p_ouser_V_bv_V_empty_n == 1'b0)) | ((exitcond_i1_reg_147 == 1'd0) & (p_odata_V_bv_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((exitcond_i1_reg_147 == 1'd0) & (p_olast_V_bv_V_empty_n == 1'b0)) | ((exitcond_i1_reg_147 == 1'd0) & (p_ouser_V_bv_V_empty_n == 1'b0)) | ((exitcond_i1_reg_147 == 1'd0) & (p_odata_V_bv_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((exitcond_i1_reg_147 == 1'd0) & (p_odata_V_data_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((exitcond_i1_reg_147 == 1'd0) & (p_olast_V_bv_V_empty_n == 1'b0)) | ((exitcond_i1_reg_147 == 1'd0) & (p_ouser_V_bv_V_empty_n == 1'b0)) | ((exitcond_i1_reg_147 == 1'd0) & (p_odata_V_bv_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state4_io = ((exitcond_i1_reg_147_pp0_iter1_reg == 1'd0) & (p_odata_V_data_V_1_ack_in == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((p_odata_V_data_V_1_ack_in == 1'b0) | (p_odata_V_last_V_1_ack_in == 1'b0) | (p_odata_V_user_V_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond_i1_fu_135_p2 = ((i_0_i1_reg_124 == 19'd307200) ? 1'b1 : 1'b0);

assign i_fu_141_p2 = (i_0_i1_reg_124 + 19'd1);

assign p_odata_TDATA = p_odata_V_data_V_1_data_out;

assign p_odata_TLAST = p_odata_V_last_V_1_data_out;

assign p_odata_TUSER = p_odata_V_user_V_1_data_out;

assign p_odata_TVALID = p_odata_V_last_V_1_state[1'd0];

assign p_odata_V_data_V_1_ack_in = p_odata_V_data_V_1_state[1'd1];

assign p_odata_V_data_V_1_ack_out = p_odata_TREADY;

assign p_odata_V_data_V_1_load_A = (p_odata_V_data_V_1_state_cmp_full & ~p_odata_V_data_V_1_sel_wr);

assign p_odata_V_data_V_1_load_B = (p_odata_V_data_V_1_state_cmp_full & p_odata_V_data_V_1_sel_wr);

assign p_odata_V_data_V_1_sel = p_odata_V_data_V_1_sel_rd;

assign p_odata_V_data_V_1_state_cmp_full = ((p_odata_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign p_odata_V_data_V_1_vld_out = p_odata_V_data_V_1_state[1'd0];

assign p_odata_V_last_V_1_ack_in = p_odata_V_last_V_1_state[1'd1];

assign p_odata_V_last_V_1_ack_out = p_odata_TREADY;

assign p_odata_V_last_V_1_load_A = (p_odata_V_last_V_1_state_cmp_full & ~p_odata_V_last_V_1_sel_wr);

assign p_odata_V_last_V_1_load_B = (p_odata_V_last_V_1_state_cmp_full & p_odata_V_last_V_1_sel_wr);

assign p_odata_V_last_V_1_sel = p_odata_V_last_V_1_sel_rd;

assign p_odata_V_last_V_1_state_cmp_full = ((p_odata_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign p_odata_V_last_V_1_vld_out = p_odata_V_last_V_1_state[1'd0];

assign p_odata_V_user_V_1_ack_in = p_odata_V_user_V_1_state[1'd1];

assign p_odata_V_user_V_1_ack_out = p_odata_TREADY;

assign p_odata_V_user_V_1_load_A = (p_odata_V_user_V_1_state_cmp_full & ~p_odata_V_user_V_1_sel_wr);

assign p_odata_V_user_V_1_load_B = (p_odata_V_user_V_1_state_cmp_full & p_odata_V_user_V_1_sel_wr);

assign p_odata_V_user_V_1_sel = p_odata_V_user_V_1_sel_rd;

assign p_odata_V_user_V_1_state_cmp_full = ((p_odata_V_user_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign p_odata_V_user_V_1_vld_out = p_odata_V_user_V_1_state[1'd0];

endmodule //Loop_2_proc67