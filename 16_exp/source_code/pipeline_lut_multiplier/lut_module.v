

module lut_module(
    input CLK,
    input RSTn,
    input[7:0]Addr,
    output[15:0]Q
    );

/*****************************/

    reg[15:0]rQ;

    always@(posedge CLK or negedge RSTn)
        if(!RSTn)
            rQ<=16'd0;
        else
            case(Addr)

                0,1 :rQ<=16'd0;
                2 : rQ<=16'd1;
                3 : rQ<=16'd2;
                4 : rQ<=16'd4;
                5 : rQ<=16'd6;
                6 : rQ<=16'd9;
                7 : rQ<=16'd12;
                8 : rQ<=16'd16;
                9 : rQ<=16'd20;
                10 : rQ<=16'd25;
                11 : rQ<=16'd30;
                12 : rQ<=16'd36;
                13 : rQ<=16'd42;
                14 : rQ<=16'd49;
                15 : rQ<=16'd56;
                16 : rQ<=16'd64;
                17 : rQ<=16'd72;
                18 : rQ<=16'd81;
                19 : rQ<=16'd90;
                20 : rQ<=16'd100;
                21 : rQ<=16'd110;
                22 : rQ<=16'd121;
                23 : rQ<=16'd132;
                24 : rQ<=16'd144;
                25 : rQ<=16'd156;
                26 : rQ<=16'd169;
                27 : rQ<=16'd182;
                28 : rQ<=16'd196;
                29 : rQ<=16'd210;
                30 : rQ<=16'd225;
                31 : rQ<=16'd240;
                32 : rQ<=16'd256;
                33 : rQ<=16'd272;
                34 : rQ<=16'd289;
                35 : rQ<=16'd306;
                36 : rQ<=16'd324;
                37 : rQ<=16'd342;
                38 : rQ<=16'd361;
                39 : rQ<=16'd380;
                40 : rQ<=16'd400;
                41 : rQ<=16'd420;
                42 : rQ<=16'd441;
                43 : rQ<=16'd462;
                44 : rQ<=16'd484;
                45 : rQ<=16'd506;
                46 : rQ<=16'd529;
                47 : rQ<=16'd552;
                48 : rQ<=16'd576;
                49 : rQ<=16'd600;
                50 : rQ<=16'd625;
                51 : rQ<=16'd650;
                52 : rQ<=16'd676;
                53 : rQ<=16'd702;
                54 : rQ<=16'd729;
                55 : rQ<=16'd756;
                56 : rQ<=16'd784;
                57 : rQ<=16'd812;
                58 : rQ<=16'd841;
                59 : rQ<=16'd870;
                60 : rQ<=16'd900;
                61 : rQ<=16'd930;
                62 : rQ<=16'd961;
                63 : rQ<=16'd992;
                64 : rQ<=16'd1024;
                65 : rQ<=16'd1056;
                66 : rQ<=16'd1089;
                67 : rQ<=16'd1122;
                68 : rQ<=16'd1156;
                69 : rQ<=16'd1190;
                70 : rQ<=16'd1225;
                71 : rQ<=16'd1260;
                72 : rQ<=16'd1296;
                73 : rQ<=16'd1332;
                74 : rQ<=16'd1369;
                75 : rQ<=16'd1406;
                76 : rQ<=16'd1444;
                77 : rQ<=16'd1482;
                78 : rQ<=16'd1521;
                79 : rQ<=16'd1560;
                80 : rQ<=16'd1600;
                81 : rQ<=16'd1640;
                82 : rQ<=16'd1681;
                83 : rQ<=16'd1722;
                84 : rQ<=16'd1764;
                85 : rQ<=16'd1806;
                86 : rQ<=16'd1849;
                87 : rQ<=16'd1892;
                88 : rQ<=16'd1936;
                89 : rQ<=16'd1980;
                90 : rQ<=16'd2025;
                91 : rQ<=16'd2070;
                92 : rQ<=16'd2116;
                93 : rQ<=16'd2162;
                94 : rQ<=16'd2209;
                95 : rQ<=16'd2256;
                96 : rQ<=16'd2304;
                97 : rQ<=16'd2352;
                98 : rQ<=16'd2401;
                99 : rQ<=16'd2450;
                100 : rQ<=16'd2500;
                101 : rQ<=16'd2550;
                102 : rQ<=16'd2601;
                103 : rQ<=16'd2652;
                104 : rQ<=16'd2704;
                105 : rQ<=16'd2756;
                106 : rQ<=16'd2809;
                107 : rQ<=16'd2862;
                108 : rQ<=16'd2916;
                109 : rQ<=16'd2970;
                110 : rQ<=16'd3025;
                111 : rQ<=16'd3080;
                112 : rQ<=16'd3136;
                113 : rQ<=16'd3192;
                114 : rQ<=16'd3249;
                115 : rQ<=16'd3306;
                116 : rQ<=16'd3364;
                117 : rQ<=16'd3422;
                118 : rQ<=16'd3481;
                119 : rQ<=16'd3540;
                120 : rQ<=16'd3600;
                121 : rQ<=16'd3660;
                122 : rQ<=16'd3721;
                123 : rQ<=16'd3782;
                124 : rQ<=16'd3844;
                125 : rQ<=16'd3906;
                126 : rQ<=16'd3969;
                127 : rQ<=16'd4032;
                128 : rQ<=16'd4096;
                129 : rQ<=16'd4160;
                130 : rQ<=16'd4225;
                131 : rQ<=16'd4290;
                132 : rQ<=16'd4356;
                133 : rQ<=16'd4422;
                134 : rQ<=16'd4489;
                135 : rQ<=16'd4556;
                136 : rQ<=16'd4624;
                137 : rQ<=16'd4692;
                138 : rQ<=16'd4761;
                139 : rQ<=16'd4830;
                140 : rQ<=16'd4900;
                141 : rQ<=16'd4970;
                142 : rQ<=16'd5041;
                143 : rQ<=16'd5112;
                144 : rQ<=16'd5184;
                145 : rQ<=16'd5256;
                146 : rQ<=16'd5329;
                147 : rQ<=16'd5402;
                148 : rQ<=16'd5476;
                149 : rQ<=16'd5550;
                150 : rQ<=16'd5625;
                151 : rQ<=16'd5700;
                152 : rQ<=16'd5776;
                153 : rQ<=16'd5852;
                154 : rQ<=16'd5929;
                155 : rQ<=16'd6006;
                156 : rQ<=16'd6084;
                157 : rQ<=16'd6162;
                158 : rQ<=16'd6241;
                159 : rQ<=16'd6320;
                160 : rQ<=16'd6400;
                161 : rQ<=16'd6480;
                162 : rQ<=16'd6561;
                163 : rQ<=16'd6642;
                164 : rQ<=16'd6724;
                165 : rQ<=16'd6806;
                166 : rQ<=16'd6889;
                167 : rQ<=16'd6972;
                168 : rQ<=16'd7056;
                169 : rQ<=16'd7140;
                170 : rQ<=16'd7225;
                171 : rQ<=16'd7310;
                172 : rQ<=16'd7396;
                173 : rQ<=16'd7482;
                174 : rQ<=16'd7569;
                175 : rQ<=16'd7656;
                176 : rQ<=16'd7744;
                177 : rQ<=16'd7832;
                178 : rQ<=16'd7921;
                179 : rQ<=16'd8010;
                180 : rQ<=16'd8100;
                181 : rQ<=16'd8190;
                182 : rQ<=16'd8281;
                183 : rQ<=16'd8372;
                184 : rQ<=16'd8464;
                185 : rQ<=16'd8556;
                186 : rQ<=16'd8649;
                187 : rQ<=16'd8742;
                188 : rQ<=16'd8836;
                189 : rQ<=16'd8930;
                190 : rQ<=16'd9025;
                191 : rQ<=16'd9120;
                192 : rQ<=16'd9216;
                193 : rQ<=16'd9312;
                194 : rQ<=16'd9409;
                195 : rQ<=16'd9506;
                196 : rQ<=16'd9604;
                197 : rQ<=16'd9702;
                198 : rQ<=16'd9801;
                199 : rQ<=16'd9900;
                200 : rQ<=16'd10000;
                201 : rQ<=16'd10100;
                202 : rQ<=16'd10201;
                203 : rQ<=16'd10302;
                204 : rQ<=16'd10404;
                205 : rQ<=16'd10506;
                206 : rQ<=16'd10609;
                207 : rQ<=16'd10712;
                208 : rQ<=16'd10816;
                209 : rQ<=16'd10920;
                210 : rQ<=16'd11025;
                211 : rQ<=16'd11130;
                212 : rQ<=16'd11236;
                213 : rQ<=16'd11342;
                214 : rQ<=16'd11449;
                215 : rQ<=16'd11556;
                216 : rQ<=16'd11664;
                217 : rQ<=16'd11772;
                218 : rQ<=16'd11881;
                219 : rQ<=16'd11990;
                220 : rQ<=16'd12100;
                221 : rQ<=16'd12210;
                222 : rQ<=16'd12321;
                223 : rQ<=16'd12432;
                224 : rQ<=16'd12544;
                225 : rQ<=16'd12656;
                226 : rQ<=16'd12769;
                227 : rQ<=16'd12882;
                228 : rQ<=16'd12996;
                229 : rQ<=16'd13100;
                230 : rQ<=16'd13225;
                231 : rQ<=16'd13340;
                232 : rQ<=16'd13456;
                233 : rQ<=16'd13572;
                234 : rQ<=16'd13689;
                235 : rQ<=16'd13806;
                236 : rQ<=16'd13924;
                237 : rQ<=16'd14042;
                238 : rQ<=16'd14161;
                239 : rQ<=16'd14280;
                240 : rQ<=16'd14400;
                241 : rQ<=16'd14520;
                242 : rQ<=16'd14641;
                243 : rQ<=16'd14762;
                244 : rQ<=16'd14884;
                245 : rQ<=16'd15006;
                246 : rQ<=16'd15129;
                247 : rQ<=16'd15252;
                248 : rQ<=16'd15376;
                249 : rQ<=16'd15500;
                250 : rQ<=16'd15625;
                251 : rQ<=16'd15750;
                252 : rQ<=16'd15876;
                253 : rQ<=16'd16002;
                254 : rQ<=16'd16129;
                255 : rQ<=16'd16256;

            endcase

    assign Q = rQ;

endmodule
