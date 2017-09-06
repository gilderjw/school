<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_7(15:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="XLXN_20(15:0)" />
        <signal name="instruction(15:12)" />
        <signal name="XLXN_10(15:0)" />
        <signal name="XLXN_66(15:0)" />
        <signal name="XLXN_68(15:0)" />
        <signal name="XLXN_69(15:0)" />
        <signal name="XLXN_77(15:0)" />
        <signal name="XLXN_79(15:0)" />
        <signal name="XLXN_110(15:0)" />
        <signal name="XLXN_111(15:0)" />
        <signal name="instruction(15:0)" />
        <signal name="instruction(11:8)" />
        <signal name="instruction(7:4)" />
        <signal name="instruction(3:0)" />
        <signal name="XLXN_115(15:0)" />
        <signal name="XLXN_116(15:0)" />
        <signal name="C_PCWrite" />
        <signal name="C_MDin" />
        <signal name="C_MRead" />
        <signal name="C_MWrite" />
        <signal name="C_RFRead" />
        <signal name="C_RDWrite" />
        <signal name="C_SPWrite" />
        <signal name="C_AWrite" />
        <signal name="C_BWrite" />
        <signal name="C_ALUInA" />
        <signal name="C_ALUOutWrite" />
        <signal name="C_Branch" />
        <signal name="C_SPRel" />
        <signal name="C_PshPop" />
        <signal name="C_PCSrc(1:0)" />
        <signal name="C_MAddr(1:0)" />
        <signal name="C_RFWA(1:0)" />
        <signal name="C_ALUInB(1:0)" />
        <signal name="C_ALUOp(3:0)" />
        <signal name="C_DEBUG_NextState(3:0)" />
        <signal name="C_RFWD(2:0)" />
        <signal name="cmp(15:0)" />
        <signal name="instruction(11:0)" />
        <signal name="MemoryOut(15:0)" />
        <signal name="XLXN_147(15:0)" />
        <signal name="MemoryAddress(14:0)" />
        <signal name="XLXN_148(15:0)" />
        <signal name="XLXN_151(15:0)" />
        <signal name="MemoryAddress(15:0)" />
        <signal name="XLXN_185(15:0)" />
        <signal name="XLXN_187(15:0)" />
        <signal name="XLXN_188(15:0)" />
        <signal name="ALUOutResult(15:0)" />
        <signal name="XLXN_191" />
        <signal name="C_IRWrite" />
        <signal name="XLXN_199" />
        <signal name="XLXN_216(1:0)" />
        <signal name="AOutput(15:0)" />
        <signal name="XLXN_223" />
        <signal name="PCVal(15:0)" />
        <signal name="XLXN_232(15:0)" />
        <signal name="BOutput(15:0)" />
        <signal name="XLXN_233(15:0)" />
        <signal name="XLXN_234" />
        <signal name="ZERO" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="instruction(15:0)" />
        <port polarity="Output" name="C_PCWrite" />
        <port polarity="Output" name="C_MDin" />
        <port polarity="Output" name="C_MRead" />
        <port polarity="Output" name="C_MWrite" />
        <port polarity="Output" name="C_RFRead" />
        <port polarity="Output" name="C_RDWrite" />
        <port polarity="Output" name="C_SPWrite" />
        <port polarity="Output" name="C_AWrite" />
        <port polarity="Output" name="C_BWrite" />
        <port polarity="Output" name="C_ALUInA" />
        <port polarity="Output" name="C_ALUOutWrite" />
        <port polarity="Output" name="C_Branch" />
        <port polarity="Output" name="C_SPRel" />
        <port polarity="Output" name="C_PshPop" />
        <port polarity="Output" name="C_PCSrc(1:0)" />
        <port polarity="Output" name="C_MAddr(1:0)" />
        <port polarity="Output" name="C_RFWA(1:0)" />
        <port polarity="Output" name="C_ALUInB(1:0)" />
        <port polarity="Output" name="C_ALUOp(3:0)" />
        <port polarity="Output" name="C_DEBUG_NextState(3:0)" />
        <port polarity="Output" name="C_RFWD(2:0)" />
        <port polarity="Output" name="MemoryOut(15:0)" />
        <port polarity="Output" name="MemoryAddress(15:0)" />
        <port polarity="Output" name="XLXN_185(15:0)" />
        <port polarity="Output" name="ALUOutResult(15:0)" />
        <port polarity="Output" name="C_IRWrite" />
        <port polarity="Output" name="AOutput(15:0)" />
        <port polarity="Output" name="PCVal(15:0)" />
        <port polarity="Output" name="BOutput(15:0)" />
        <blockdef name="reg16">
            <timestamp>2015-10-22T22:59:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Addby2">
            <timestamp>2015-11-9T23:40:7</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2015-11-12T17:16:13</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="448" />
        </blockdef>
        <blockdef name="ALUSourceBMux">
            <timestamp>2015-11-11T11:38:10</timestamp>
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="16" height="28" />
        </blockdef>
        <blockdef name="MemoryAddressSelector">
            <timestamp>2015-11-9T16:6:48</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="RegisterFileDataInputMux">
            <timestamp>2015-11-11T11:37:53</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-320" height="512" />
        </blockdef>
        <blockdef name="RegisterFileWriteAddressMux">
            <timestamp>2015-11-9T16:8:46</timestamp>
            <rect width="64" x="432" y="84" height="24" />
            <line x2="496" y1="96" y2="96" x1="432" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="368" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="RegisterFile">
            <timestamp>2015-11-12T17:45:55</timestamp>
            <rect width="64" x="352" y="84" height="24" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-428" height="24" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <rect width="288" x="64" y="-448" height="576" />
        </blockdef>
        <blockdef name="AluTheGOD">
            <timestamp>2015-11-12T17:27:28</timestamp>
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-1248" y2="-1248" x1="320" />
            <line x2="384" y1="-1184" y2="-1184" x1="320" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-1280" height="1600" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="ZeroExtender">
            <timestamp>2015-11-11T11:40:4</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ZE44">
            <timestamp>2015-11-11T11:41:2</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="adder">
            <timestamp>2015-11-8T20:50:6</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="FORCEMSB0">
            <timestamp>2015-11-11T11:40:54</timestamp>
            <rect width="320" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="memory">
            <timestamp>2015-11-15T15:29:28</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="twoInputMux">
            <timestamp>2015-11-11T11:37:39</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="subByOne">
            <timestamp>2015-11-15T15:23:8</timestamp>
            <rect width="0" x="64" y="20" height="24" />
            <line x2="64" y1="32" y2="32" x1="64" />
            <rect width="0" x="188" y="20" height="24" />
            <line x2="188" y1="32" y2="32" x1="188" />
            <rect width="124" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="fd16re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
        <block symbolname="reg16" name="StackPointer">
            <blockpin signalname="XLXN_69(15:0)" name="I(15:0)" />
            <blockpin signalname="C_SPWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_66(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="ALUSourceBMux" name="XLXI_8">
            <blockpin signalname="C_ALUInB(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="instruction(15:0)" name="Three(15:0)" />
            <blockpin signalname="XLXN_116(15:0)" name="Two(15:0)" />
            <blockpin signalname="XLXN_115(15:0)" name="One(15:0)" />
            <blockpin signalname="XLXN_20(15:0)" name="Zero(15:0)" />
            <blockpin signalname="XLXN_151(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="reg16" name="B">
            <blockpin signalname="BOutput(15:0)" name="I(15:0)" />
            <blockpin signalname="C_BWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_20(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="A">
            <blockpin signalname="AOutput(15:0)" name="I(15:0)" />
            <blockpin signalname="C_AWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_147(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="AluTheGOD" name="XLXI_71">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="instruction(15:12)" name="Opcode(3:0)" />
            <blockpin signalname="C_PCWrite" name="PCWrite" />
            <blockpin signalname="C_MDin" name="MDin" />
            <blockpin signalname="C_MRead" name="MRead" />
            <blockpin signalname="C_MWrite" name="MWrite" />
            <blockpin signalname="C_RFRead" name="RFRead" />
            <blockpin signalname="C_RDWrite" name="RDWrite" />
            <blockpin signalname="C_SPWrite" name="SPWrite" />
            <blockpin signalname="C_AWrite" name="AWrite" />
            <blockpin signalname="C_BWrite" name="BWrite" />
            <blockpin signalname="C_ALUInA" name="ALUInA" />
            <blockpin signalname="C_ALUOutWrite" name="ALUOutWrite" />
            <blockpin signalname="C_Branch" name="Branch" />
            <blockpin signalname="C_SPRel" name="SPRel" />
            <blockpin signalname="C_PshPop" name="PshPop" />
            <blockpin signalname="C_IRWrite" name="IRWrite" />
            <blockpin signalname="C_PCSrc(1:0)" name="PCSrc(1:0)" />
            <blockpin signalname="C_MAddr(1:0)" name="MAddr(1:0)" />
            <blockpin signalname="C_RFWA(1:0)" name="RFWA(1:0)" />
            <blockpin signalname="C_RFWD(2:0)" name="RFWD(2:0)" />
            <blockpin signalname="C_ALUInB(1:0)" name="ALUInB(1:0)" />
            <blockpin signalname="C_ALUOp(3:0)" name="ALUOp(3:0)" />
            <blockpin signalname="C_DEBUG_NextState(3:0)" name="CrtState(3:0)" />
        </block>
        <block symbolname="Addby2" name="XLXI_3">
            <blockpin signalname="PCVal(15:0)" name="oldPC(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="nextPC(15:0)" />
        </block>
        <block symbolname="reg16" name="InstructionRegister">
            <blockpin signalname="MemoryOut(15:0)" name="I(15:0)" />
            <blockpin signalname="C_IRWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="instruction(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="MemoryAddressSelector" name="XLXI_11">
            <blockpin signalname="C_MAddr(1:0)" name="MAddr(1:0)" />
            <blockpin signalname="AOutput(15:0)" name="Three(15:0)" />
            <blockpin signalname="XLXN_185(15:0)" name="Two(15:0)" />
            <blockpin signalname="PCVal(15:0)" name="One(15:0)" />
            <blockpin signalname="ALUOutResult(15:0)" name="Zero(15:0)" />
            <blockpin signalname="MemoryAddress(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_101">
            <attr value="FFFF" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_79(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_102">
            <attr value="0001" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_77(15:0)" name="O" />
        </block>
        <block symbolname="RegisterFileDataInputMux" name="XLXI_105">
            <blockpin signalname="C_RFWD(2:0)" name="RFWD(2:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="Five(15:0)" />
            <blockpin signalname="XLXN_111(15:0)" name="Four(15:0)" />
            <blockpin signalname="XLXN_110(15:0)" name="Three(15:0)" />
            <blockpin signalname="AOutput(15:0)" name="Two(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="One(15:0)" />
            <blockpin signalname="MemoryOut(15:0)" name="Zero(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="RegisterFileWriteAddressMux" name="XLXI_108">
            <blockpin signalname="C_RFWA(1:0)" name="RFWA(1:0)" />
            <blockpin signalname="instruction(11:8)" name="InstructionRegister(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="r(3:0)" />
        </block>
        <block symbolname="constant" name="XLXI_109">
            <attr value="0002" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_116(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_110">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_115(15:0)" name="O" />
        </block>
        <block symbolname="ZeroExtender" name="XLXI_111">
            <blockpin signalname="XLXN_216(1:0)" name="compareIn(1:0)" />
            <blockpin signalname="cmp(15:0)" name="cmp(15:0)" />
        </block>
        <block symbolname="ZE44" name="XLXI_113">
            <blockpin signalname="instruction(11:0)" name="instruction(11:0)" />
            <blockpin signalname="XLXN_111(15:0)" name="lolWut(15:0)" />
        </block>
        <block symbolname="adder" name="XLXI_114">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_68(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_66(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_69(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="FORCEMSB0" name="XLXI_115">
            <blockpin signalname="XLXN_148(15:0)" name="notForced(15:0)" />
            <blockpin signalname="XLXN_232(15:0)" name="forced(15:0)" />
        </block>
        <block symbolname="ALUSourceBMux" name="XLXI_117">
            <blockpin signalname="C_PCSrc(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="AOutput(15:0)" name="Three(15:0)" />
            <blockpin signalname="BOutput(15:0)" name="Two(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="One(15:0)" />
            <blockpin signalname="XLXN_233(15:0)" name="Zero(15:0)" />
            <blockpin signalname="XLXN_148(15:0)" name="r(15:0)" />
        </block>
        <block symbolname="RegisterFile" name="XLXI_118">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="C_RDWrite" name="RegWrite" />
            <blockpin signalname="C_RFRead" name="RegRead" />
            <blockpin signalname="instruction(7:4)" name="AAddress(3:0)" />
            <blockpin signalname="instruction(3:0)" name="BAddress(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="WriteAddress(3:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="DataIn(15:0)" />
            <blockpin signalname="AOutput(15:0)" name="A(15:0)" />
            <blockpin signalname="BOutput(15:0)" name="B(15:0)" />
        </block>
        <block symbolname="memory" name="XLXI_123">
            <blockpin signalname="MemoryAddress(14:0)" name="addra(14:0)" />
            <blockpin signalname="XLXN_188(15:0)" name="dina(15:0)" />
            <blockpin signalname="C_MRead" name="ena" />
            <blockpin signalname="C_MWrite" name="wea(0:0)" />
            <blockpin signalname="CLK" name="clka" />
            <blockpin signalname="MemoryOut(15:0)" name="douta(15:0)" />
        </block>
        <block symbolname="twoInputMux" name="XLXI_128">
            <blockpin signalname="C_PshPop" name="SelectorBit" />
            <blockpin signalname="XLXN_77(15:0)" name="Zero(15:0)" />
            <blockpin signalname="XLXN_79(15:0)" name="One(15:0)" />
            <blockpin signalname="XLXN_68(15:0)" name="R(15:0)" />
        </block>
        <block symbolname="twoInputMux" name="XLXI_129">
            <blockpin signalname="C_PshPop" name="SelectorBit" />
            <blockpin signalname="XLXN_66(15:0)" name="Zero(15:0)" />
            <blockpin signalname="XLXN_69(15:0)" name="One(15:0)" />
            <blockpin signalname="XLXN_185(15:0)" name="R(15:0)" />
        </block>
        <block symbolname="twoInputMux" name="XLXI_130">
            <blockpin signalname="C_ALUInA" name="SelectorBit" />
            <blockpin signalname="XLXN_147(15:0)" name="Zero(15:0)" />
            <blockpin signalname="cmp(15:0)" name="One(15:0)" />
            <blockpin signalname="XLXN_187(15:0)" name="R(15:0)" />
        </block>
        <block symbolname="and2" name="XLXI_133">
            <blockpin signalname="C_Branch" name="I0" />
            <blockpin signalname="XLXN_234" name="I1" />
            <blockpin signalname="XLXN_199" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_134">
            <blockpin signalname="C_PCWrite" name="I0" />
            <blockpin signalname="XLXN_199" name="I1" />
            <blockpin signalname="XLXN_191" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_153">
            <blockpin signalname="XLXN_223" name="G" />
        </block>
        <block symbolname="fd16re" name="XLXI_155">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_191" name="CE" />
            <blockpin signalname="XLXN_232(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_223" name="R" />
            <blockpin signalname="PCVal(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="twoInputMux" name="XLXI_131">
            <blockpin signalname="C_MDin" name="SelectorBit" />
            <blockpin signalname="BOutput(15:0)" name="Zero(15:0)" />
            <blockpin signalname="AOutput(15:0)" name="One(15:0)" />
            <blockpin signalname="XLXN_188(15:0)" name="R(15:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_156">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_187(15:0)" name="a(15:0)" />
            <blockpin signalname="XLXN_151(15:0)" name="b(15:0)" />
            <blockpin signalname="C_ALUOp(3:0)" name="opcode(3:0)" />
            <blockpin name="cout" />
            <blockpin signalname="ZERO" name="zero" />
            <blockpin name="error" />
            <blockpin signalname="ALUOutResult(15:0)" name="r(15:0)" />
            <blockpin signalname="XLXN_216(1:0)" name="compareVal(1:0)" />
        </block>
        <block symbolname="ifd" name="XLXI_157">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="ZERO" name="D" />
            <blockpin signalname="XLXN_234" name="Q" />
        </block>
        <block symbolname="reg16" name="ALUOut">
            <blockpin signalname="ALUOutResult(15:0)" name="I(15:0)" />
            <blockpin signalname="C_ALUOutWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_110(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="subByOne" name="XLXI_159">
            <blockpin signalname="AOutput(15:0)" name="oldValue(15:0)" />
            <blockpin name="result(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="4704" y="352" name="StackPointer" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="5072" y="2288" name="XLXI_8" orien="R0">
        </instance>
        <instance x="4608" y="2416" name="B" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-64" type="instance" />
        </instance>
        <instance x="4640" y="1824" name="A" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-96" type="instance" />
        </instance>
        <branch name="XLXN_7(15:0)">
            <wire x2="3232" y1="2384" y2="2384" x1="3200" />
            <wire x2="3200" y1="2384" y2="2480" x1="3200" />
            <wire x2="3712" y1="2480" y2="2480" x1="3200" />
            <wire x2="3632" y1="2320" y2="2320" x1="3616" />
            <wire x2="3888" y1="1904" y2="1904" x1="3632" />
            <wire x2="3632" y1="1904" y2="2288" x1="3632" />
            <wire x2="3632" y1="2288" y2="2320" x1="3632" />
            <wire x2="3712" y1="2288" y2="2288" x1="3632" />
            <wire x2="3712" y1="2288" y2="2480" x1="3712" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="3856" y1="1472" y2="1472" x1="3808" />
            <wire x2="3856" y1="1472" y2="1840" x1="3856" />
            <wire x2="3888" y1="1840" y2="1840" x1="3856" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3808" y="1520" type="branch" />
            <wire x2="3888" y1="1520" y2="1520" x1="3808" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4576" y="1792" type="branch" />
            <wire x2="4640" y1="1792" y2="1792" x1="4576" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4528" y="2384" type="branch" />
            <wire x2="4608" y1="2384" y2="2384" x1="4528" />
        </branch>
        <branch name="XLXN_20(15:0)">
            <wire x2="5072" y1="2256" y2="2256" x1="4992" />
        </branch>
        <branch name="instruction(15:12)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="4880" type="branch" />
            <wire x2="2352" y1="4096" y2="4096" x1="2336" />
            <wire x2="2352" y1="4096" y2="4864" x1="2352" />
            <wire x2="2352" y1="4864" y2="4880" x1="2352" />
            <wire x2="2944" y1="4864" y2="4864" x1="2352" />
        </branch>
        <instance x="48" y="1520" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="1920" type="branch" />
            <wire x2="2464" y1="1920" y2="1920" x1="2416" />
            <wire x2="2464" y1="1920" y2="2224" x1="2464" />
            <wire x2="2528" y1="2224" y2="2224" x1="2464" />
        </branch>
        <branch name="XLXN_68(15:0)">
            <wire x2="4176" y1="192" y2="192" x1="4048" />
        </branch>
        <branch name="XLXN_69(15:0)">
            <wire x2="4576" y1="384" y2="384" x1="4560" />
            <wire x2="4672" y1="192" y2="192" x1="4576" />
            <wire x2="4704" y1="192" y2="192" x1="4672" />
            <wire x2="4576" y1="192" y2="384" x1="4576" />
            <wire x2="4672" y1="96" y2="192" x1="4672" />
            <wire x2="5152" y1="96" y2="96" x1="4672" />
            <wire x2="5152" y1="96" y2="288" x1="5152" />
            <wire x2="5488" y1="288" y2="288" x1="5152" />
        </branch>
        <instance x="3408" y="208" name="XLXI_102" orien="R0">
        </instance>
        <branch name="XLXN_77(15:0)">
            <wire x2="3568" y1="240" y2="240" x1="3552" />
            <wire x2="3568" y1="240" y2="256" x1="3568" />
            <wire x2="3664" y1="256" y2="256" x1="3568" />
        </branch>
        <branch name="XLXN_79(15:0)">
            <wire x2="3648" y1="368" y2="368" x1="3552" />
            <wire x2="3664" y1="320" y2="320" x1="3648" />
            <wire x2="3648" y1="320" y2="368" x1="3648" />
        </branch>
        <instance x="3408" y="336" name="XLXI_101" orien="R0">
        </instance>
        <instance x="2528" y="2256" name="InstructionRegister" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="3232" y="2224" name="XLXI_105" orien="R0">
        </instance>
        <branch name="XLXN_110(15:0)">
            <wire x2="3232" y1="2000" y2="2000" x1="3168" />
            <wire x2="3168" y1="2000" y2="2496" x1="3168" />
            <wire x2="6736" y1="2496" y2="2496" x1="3168" />
            <wire x2="6736" y1="1440" y2="1440" x1="6656" />
            <wire x2="6736" y1="1440" y2="2496" x1="6736" />
        </branch>
        <branch name="XLXN_111(15:0)">
            <wire x2="3216" y1="2400" y2="2400" x1="2960" />
            <wire x2="3232" y1="2256" y2="2256" x1="3216" />
            <wire x2="3216" y1="2256" y2="2400" x1="3216" />
        </branch>
        <instance x="3312" y="1376" name="XLXI_108" orien="R0">
        </instance>
        <branch name="instruction(11:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3200" y="1344" type="branch" />
            <wire x2="3312" y1="1344" y2="1344" x1="3200" />
        </branch>
        <branch name="instruction(7:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="1712" type="branch" />
            <wire x2="3888" y1="1712" y2="1712" x1="3792" />
        </branch>
        <branch name="instruction(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3792" y="1776" type="branch" />
            <wire x2="3888" y1="1776" y2="1776" x1="3792" />
        </branch>
        <branch name="XLXN_115(15:0)">
            <wire x2="5072" y1="2192" y2="2192" x1="5040" />
        </branch>
        <branch name="XLXN_116(15:0)">
            <wire x2="5072" y1="2128" y2="2128" x1="5040" />
        </branch>
        <branch name="instruction(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5008" y="2064" type="branch" />
            <wire x2="5072" y1="2064" y2="2064" x1="5008" />
        </branch>
        <instance x="4896" y="2096" name="XLXI_109" orien="R0">
        </instance>
        <instance x="4896" y="2160" name="XLXI_110" orien="R0">
        </instance>
        <branch name="C_PCWrite">
            <wire x2="3376" y1="3648" y2="3648" x1="3328" />
            <wire x2="3376" y1="3648" y2="3664" x1="3376" />
            <wire x2="3392" y1="3664" y2="3664" x1="3376" />
        </branch>
        <branch name="C_MDin">
            <wire x2="3376" y1="3712" y2="3712" x1="3328" />
            <wire x2="3376" y1="3712" y2="3728" x1="3376" />
            <wire x2="3392" y1="3728" y2="3728" x1="3376" />
        </branch>
        <branch name="C_MRead">
            <wire x2="3376" y1="3776" y2="3776" x1="3328" />
            <wire x2="3376" y1="3776" y2="3792" x1="3376" />
            <wire x2="3392" y1="3792" y2="3792" x1="3376" />
        </branch>
        <branch name="C_MWrite">
            <wire x2="3376" y1="3840" y2="3840" x1="3328" />
            <wire x2="3376" y1="3840" y2="3856" x1="3376" />
            <wire x2="3392" y1="3856" y2="3856" x1="3376" />
        </branch>
        <branch name="C_RFRead">
            <wire x2="3376" y1="3904" y2="3904" x1="3328" />
            <wire x2="3376" y1="3904" y2="3920" x1="3376" />
            <wire x2="3392" y1="3920" y2="3920" x1="3376" />
        </branch>
        <branch name="C_RDWrite">
            <wire x2="3376" y1="3968" y2="3968" x1="3328" />
            <wire x2="3376" y1="3968" y2="3984" x1="3376" />
            <wire x2="3392" y1="3984" y2="3984" x1="3376" />
        </branch>
        <branch name="C_SPWrite">
            <wire x2="3376" y1="4032" y2="4032" x1="3328" />
            <wire x2="3376" y1="4032" y2="4048" x1="3376" />
            <wire x2="3392" y1="4048" y2="4048" x1="3376" />
        </branch>
        <branch name="C_AWrite">
            <wire x2="3376" y1="4096" y2="4096" x1="3328" />
            <wire x2="3376" y1="4096" y2="4112" x1="3376" />
            <wire x2="3392" y1="4112" y2="4112" x1="3376" />
        </branch>
        <branch name="C_BWrite">
            <wire x2="3376" y1="4160" y2="4160" x1="3328" />
            <wire x2="3376" y1="4160" y2="4176" x1="3376" />
            <wire x2="3392" y1="4176" y2="4176" x1="3376" />
        </branch>
        <branch name="C_ALUInA">
            <wire x2="3376" y1="4224" y2="4224" x1="3328" />
            <wire x2="3376" y1="4224" y2="4240" x1="3376" />
            <wire x2="3392" y1="4240" y2="4240" x1="3376" />
        </branch>
        <branch name="C_ALUOutWrite">
            <wire x2="3376" y1="4288" y2="4288" x1="3328" />
            <wire x2="3376" y1="4288" y2="4304" x1="3376" />
            <wire x2="3392" y1="4304" y2="4304" x1="3376" />
        </branch>
        <branch name="C_Branch">
            <wire x2="3376" y1="4352" y2="4352" x1="3328" />
            <wire x2="3376" y1="4352" y2="4368" x1="3376" />
            <wire x2="3392" y1="4368" y2="4368" x1="3376" />
        </branch>
        <branch name="C_SPRel">
            <wire x2="3376" y1="4416" y2="4416" x1="3328" />
            <wire x2="3376" y1="4416" y2="4432" x1="3376" />
            <wire x2="3392" y1="4432" y2="4432" x1="3376" />
        </branch>
        <branch name="C_PshPop">
            <wire x2="3376" y1="4480" y2="4480" x1="3328" />
            <wire x2="3376" y1="4480" y2="4496" x1="3376" />
            <wire x2="3392" y1="4496" y2="4496" x1="3376" />
        </branch>
        <branch name="C_PCSrc(1:0)">
            <wire x2="3376" y1="4544" y2="4544" x1="3328" />
            <wire x2="3376" y1="4544" y2="4560" x1="3376" />
            <wire x2="3392" y1="4560" y2="4560" x1="3376" />
        </branch>
        <branch name="C_MAddr(1:0)">
            <wire x2="3376" y1="4608" y2="4608" x1="3328" />
            <wire x2="3376" y1="4608" y2="4624" x1="3376" />
            <wire x2="3392" y1="4624" y2="4624" x1="3376" />
        </branch>
        <branch name="C_RFWA(1:0)">
            <wire x2="3376" y1="4672" y2="4672" x1="3328" />
            <wire x2="3376" y1="4672" y2="4688" x1="3376" />
            <wire x2="3392" y1="4688" y2="4688" x1="3376" />
        </branch>
        <branch name="C_RFWD(2:0)">
            <wire x2="3376" y1="4736" y2="4736" x1="3328" />
            <wire x2="3376" y1="4736" y2="4752" x1="3376" />
            <wire x2="3392" y1="4752" y2="4752" x1="3376" />
        </branch>
        <branch name="C_ALUInB(1:0)">
            <wire x2="3376" y1="4800" y2="4800" x1="3328" />
            <wire x2="3376" y1="4800" y2="4816" x1="3376" />
            <wire x2="3392" y1="4816" y2="4816" x1="3376" />
        </branch>
        <branch name="C_ALUOp(3:0)">
            <wire x2="3376" y1="4864" y2="4864" x1="3328" />
            <wire x2="3376" y1="4864" y2="4880" x1="3376" />
            <wire x2="3392" y1="4880" y2="4880" x1="3376" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="3664" type="branch" />
            <wire x2="2912" y1="3664" y2="3664" x1="2896" />
            <wire x2="2944" y1="3648" y2="3648" x1="2912" />
            <wire x2="2912" y1="3648" y2="3664" x1="2912" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4624" y="320" type="branch" />
            <wire x2="4704" y1="320" y2="320" x1="4624" />
        </branch>
        <branch name="C_MAddr(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1952" type="branch" />
            <wire x2="848" y1="1952" y2="1952" x1="688" />
        </branch>
        <branch name="C_AWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="1728" type="branch" />
            <wire x2="4640" y1="1728" y2="1728" x1="4560" />
        </branch>
        <branch name="C_BWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4544" y="2320" type="branch" />
            <wire x2="4608" y1="2320" y2="2320" x1="4544" />
        </branch>
        <branch name="C_ALUInB(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4944" y="2000" type="branch" />
            <wire x2="5072" y1="2000" y2="2000" x1="4944" />
        </branch>
        <branch name="C_ALUOp(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5600" y="1600" type="branch" />
            <wire x2="5664" y1="1600" y2="1600" x1="5600" />
        </branch>
        <branch name="C_ALUOutWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="6240" y="1504" type="branch" />
            <wire x2="6272" y1="1504" y2="1504" x1="6240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1408" type="branch" />
            <wire x2="1024" y1="1408" y2="1408" x1="1008" />
            <wire x2="1024" y1="1408" y2="1424" x1="1024" />
            <wire x2="1040" y1="1424" y2="1424" x1="1024" />
        </branch>
        <branch name="C_RFWA(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3216" y="1408" type="branch" />
            <wire x2="3312" y1="1408" y2="1408" x1="3216" />
        </branch>
        <branch name="C_RDWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="1584" type="branch" />
            <wire x2="3888" y1="1584" y2="1584" x1="3824" />
        </branch>
        <branch name="C_RFRead">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="1648" type="branch" />
            <wire x2="3888" y1="1648" y2="1648" x1="3824" />
        </branch>
        <branch name="C_RFWD(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="1936" type="branch" />
            <wire x2="3232" y1="1936" y2="1936" x1="3152" />
        </branch>
        <branch name="instruction(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="2608" type="branch" />
            <wire x2="2512" y1="2400" y2="2400" x1="2448" />
            <wire x2="2448" y1="2400" y2="2512" x1="2448" />
            <wire x2="2624" y1="2512" y2="2512" x1="2448" />
            <wire x2="2624" y1="2512" y2="2608" x1="2624" />
            <wire x2="2624" y1="2608" y2="2608" x1="2608" />
        </branch>
        <instance x="2512" y="2432" name="XLXI_113" orien="R0">
        </instance>
        <branch name="C_IRWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="2160" type="branch" />
            <wire x2="2528" y1="2160" y2="2160" x1="2448" />
        </branch>
        <branch name="C_DEBUG_NextState(3:0)">
            <wire x2="3424" y1="5056" y2="5056" x1="3328" />
            <wire x2="3424" y1="5056" y2="5088" x1="3424" />
            <wire x2="3440" y1="5088" y2="5088" x1="3424" />
        </branch>
        <iomarker fontsize="28" x="3440" y="5088" name="C_DEBUG_NextState(3:0)" orien="R0" />
        <branch name="C_PshPop">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="160" type="branch" />
            <wire x2="3632" y1="160" y2="160" x1="3584" />
            <wire x2="3632" y1="160" y2="192" x1="3632" />
            <wire x2="3664" y1="192" y2="192" x1="3632" />
        </branch>
        <branch name="C_SPWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4624" y="256" type="branch" />
            <wire x2="4704" y1="256" y2="256" x1="4624" />
        </branch>
        <branch name="C_PshPop">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5392" y="144" type="branch" />
            <wire x2="5408" y1="144" y2="144" x1="5392" />
            <wire x2="5408" y1="144" y2="160" x1="5408" />
            <wire x2="5488" y1="160" y2="160" x1="5408" />
        </branch>
        <instance x="4176" y="288" name="XLXI_114" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4128" y="320" type="branch" />
            <wire x2="4176" y1="320" y2="320" x1="4128" />
        </branch>
        <branch name="instruction(15:0)">
            <wire x2="2864" y1="2496" y2="2576" x1="2864" />
            <wire x2="2960" y1="2576" y2="2576" x1="2864" />
            <wire x2="3024" y1="2496" y2="2496" x1="2864" />
            <wire x2="3024" y1="2096" y2="2096" x1="2912" />
            <wire x2="3024" y1="2096" y2="2496" x1="3024" />
        </branch>
        <branch name="XLXN_147(15:0)">
            <wire x2="4592" y1="1536" y2="1904" x1="4592" />
            <wire x2="5040" y1="1904" y2="1904" x1="4592" />
            <wire x2="5072" y1="1536" y2="1536" x1="4592" />
            <wire x2="5040" y1="1664" y2="1664" x1="5024" />
            <wire x2="5040" y1="1664" y2="1904" x1="5040" />
        </branch>
        <instance x="896" y="976" name="XLXI_115" orien="R0">
        </instance>
        <branch name="XLXN_148(15:0)">
            <wire x2="816" y1="832" y2="944" x1="816" />
            <wire x2="896" y1="944" y2="944" x1="816" />
            <wire x2="1424" y1="832" y2="832" x1="816" />
            <wire x2="1424" y1="832" y2="1200" x1="1424" />
            <wire x2="992" y1="1504" y2="1504" x1="960" />
            <wire x2="1024" y1="1216" y2="1216" x1="992" />
            <wire x2="992" y1="1216" y2="1504" x1="992" />
            <wire x2="1424" y1="1200" y2="1200" x1="1024" />
            <wire x2="1024" y1="1200" y2="1216" x1="1024" />
        </branch>
        <branch name="XLXN_151(15:0)">
            <wire x2="5552" y1="2320" y2="2320" x1="5456" />
            <wire x2="5552" y1="1472" y2="2320" x1="5552" />
            <wire x2="5664" y1="1472" y2="1472" x1="5552" />
        </branch>
        <branch name="C_PCSrc(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1184" type="branch" />
            <wire x2="576" y1="1184" y2="1184" x1="480" />
        </branch>
        <instance x="3888" y="1936" name="XLXI_118" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1600" y="1280" name="PCVal(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2368" y="1840" name="MemoryOut(15:0)" orien="R0" />
        <branch name="C_MWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1968" type="branch" />
            <wire x2="1536" y1="1968" y2="1968" x1="1520" />
            <wire x2="1536" y1="1968" y2="2000" x1="1536" />
            <wire x2="1568" y1="2000" y2="2000" x1="1536" />
        </branch>
        <branch name="C_MRead">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1904" type="branch" />
            <wire x2="1536" y1="1904" y2="1904" x1="1520" />
            <wire x2="1536" y1="1904" y2="1936" x1="1536" />
            <wire x2="1568" y1="1936" y2="1936" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="6304" y="1216" name="ALUOutResult(15:0)" orien="R0" />
        <branch name="MemoryAddress(15:0)">
            <wire x2="1264" y1="2272" y2="2272" x1="1232" />
        </branch>
        <branch name="C_ALUInA">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5008" y="1472" type="branch" />
            <wire x2="5072" y1="1472" y2="1472" x1="5008" />
        </branch>
        <branch name="XLXN_66(15:0)">
            <wire x2="4112" y1="80" y2="256" x1="4112" />
            <wire x2="4176" y1="256" y2="256" x1="4112" />
            <wire x2="5168" y1="80" y2="80" x1="4112" />
            <wire x2="5168" y1="80" y2="192" x1="5168" />
            <wire x2="5168" y1="192" y2="224" x1="5168" />
            <wire x2="5488" y1="224" y2="224" x1="5168" />
            <wire x2="5168" y1="192" y2="192" x1="5088" />
        </branch>
        <instance x="3664" y="352" name="XLXI_128" orien="R0">
        </instance>
        <instance x="5488" y="320" name="XLXI_129" orien="R0">
        </instance>
        <instance x="5072" y="1632" name="XLXI_130" orien="R0">
        </instance>
        <branch name="XLXN_187(15:0)">
            <wire x2="5536" y1="1472" y2="1472" x1="5456" />
            <wire x2="5536" y1="1408" y2="1472" x1="5536" />
            <wire x2="5664" y1="1408" y2="1408" x1="5536" />
        </branch>
        <iomarker fontsize="28" x="2960" y="2576" name="instruction(15:0)" orien="R0" />
        <iomarker fontsize="28" x="4528" y="1488" name="AOutput(15:0)" orien="R0" />
        <iomarker fontsize="28" x="4400" y="1968" name="BOutput(15:0)" orien="R270" />
        <iomarker fontsize="28" x="3392" y="3664" name="C_PCWrite" orien="R0" />
        <iomarker fontsize="28" x="3392" y="3728" name="C_MDin" orien="R0" />
        <iomarker fontsize="28" x="3392" y="3792" name="C_MRead" orien="R0" />
        <iomarker fontsize="28" x="3392" y="3856" name="C_MWrite" orien="R0" />
        <iomarker fontsize="28" x="3392" y="3920" name="C_RFRead" orien="R0" />
        <iomarker fontsize="28" x="3392" y="3984" name="C_RDWrite" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4048" name="C_SPWrite" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4112" name="C_AWrite" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4176" name="C_BWrite" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4240" name="C_ALUInA" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4304" name="C_ALUOutWrite" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4368" name="C_Branch" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4432" name="C_SPRel" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4496" name="C_PshPop" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4560" name="C_PCSrc(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4624" name="C_MAddr(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4688" name="C_RFWA(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4752" name="C_RFWD(2:0)" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4816" name="C_ALUInB(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3392" y="4880" name="C_ALUOp(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1264" y="2272" name="MemoryAddress(15:0)" orien="R0" />
        <branch name="C_IRWrite">
            <wire x2="3392" y1="5120" y2="5120" x1="3328" />
            <wire x2="3392" y1="5120" y2="5136" x1="3392" />
            <wire x2="3472" y1="5136" y2="5136" x1="3392" />
            <wire x2="3472" y1="5136" y2="5152" x1="3472" />
        </branch>
        <iomarker fontsize="28" x="3472" y="5152" name="C_IRWrite" orien="R90" />
        <branch name="ALUOutResult(15:0)">
            <wire x2="736" y1="2208" y2="3152" x1="736" />
            <wire x2="6080" y1="3152" y2="3152" x1="736" />
            <wire x2="848" y1="2208" y2="2208" x1="736" />
            <wire x2="6080" y1="1600" y2="1600" x1="6048" />
            <wire x2="6080" y1="1600" y2="1616" x1="6080" />
            <wire x2="6176" y1="1616" y2="1616" x1="6080" />
            <wire x2="6080" y1="1616" y2="3152" x1="6080" />
            <wire x2="6176" y1="1440" y2="1616" x1="6176" />
            <wire x2="6224" y1="1440" y2="1440" x1="6176" />
            <wire x2="6272" y1="1440" y2="1440" x1="6224" />
            <wire x2="6304" y1="1216" y2="1216" x1="6224" />
            <wire x2="6224" y1="1216" y2="1440" x1="6224" />
        </branch>
        <instance x="848" y="2240" name="XLXI_11" orien="R0">
        </instance>
        <instance x="816" y="384" name="XLXI_133" orien="R0" />
        <branch name="C_Branch">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="320" type="branch" />
            <wire x2="672" y1="320" y2="320" x1="576" />
            <wire x2="816" y1="320" y2="320" x1="672" />
        </branch>
        <branch name="C_PCWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="512" type="branch" />
            <wire x2="1056" y1="512" y2="512" x1="1024" />
            <wire x2="1136" y1="512" y2="512" x1="1056" />
        </branch>
        <instance x="1136" y="576" name="XLXI_134" orien="R0" />
        <branch name="XLXN_199">
            <wire x2="1088" y1="288" y2="288" x1="1072" />
            <wire x2="1088" y1="288" y2="448" x1="1088" />
            <wire x2="1136" y1="448" y2="448" x1="1088" />
        </branch>
        <branch name="XLXN_10(15:0)">
            <wire x2="512" y1="1488" y2="1488" x1="432" />
            <wire x2="512" y1="1488" y2="1616" x1="512" />
            <wire x2="2944" y1="1616" y2="1616" x1="512" />
            <wire x2="2944" y1="1616" y2="2128" x1="2944" />
            <wire x2="3232" y1="2128" y2="2128" x1="2944" />
            <wire x2="512" y1="1376" y2="1488" x1="512" />
            <wire x2="576" y1="1376" y2="1376" x1="512" />
        </branch>
        <instance x="576" y="1472" name="XLXI_117" orien="R0">
        </instance>
        <branch name="cmp(15:0)">
            <wire x2="5056" y1="1312" y2="1600" x1="5056" />
            <wire x2="5072" y1="1600" y2="1600" x1="5056" />
            <wire x2="6720" y1="1312" y2="1312" x1="5056" />
            <wire x2="6720" y1="1312" y2="1856" x1="6720" />
            <wire x2="6720" y1="1856" y2="1856" x1="6560" />
        </branch>
        <instance x="6176" y="1888" name="XLXI_111" orien="R0">
        </instance>
        <branch name="XLXN_216(1:0)">
            <wire x2="6112" y1="1728" y2="1728" x1="6048" />
            <wire x2="6112" y1="1728" y2="1856" x1="6112" />
            <wire x2="6176" y1="1856" y2="1856" x1="6112" />
        </branch>
        <instance x="2944" y="4896" name="XLXI_71" orien="R0">
        </instance>
        <instance x="1648" y="1552" name="XLXI_153" orien="R0" />
        <branch name="XLXN_191">
            <wire x2="1008" y1="1152" y2="1360" x1="1008" />
            <wire x2="1040" y1="1360" y2="1360" x1="1008" />
            <wire x2="1408" y1="1152" y2="1152" x1="1008" />
            <wire x2="1408" y1="480" y2="480" x1="1392" />
            <wire x2="1408" y1="480" y2="1152" x1="1408" />
        </branch>
        <branch name="XLXN_223">
            <wire x2="1040" y1="1520" y2="1568" x1="1040" />
            <wire x2="1504" y1="1568" y2="1568" x1="1040" />
            <wire x2="1504" y1="1408" y2="1568" x1="1504" />
            <wire x2="1712" y1="1408" y2="1408" x1="1504" />
            <wire x2="1712" y1="1408" y2="1424" x1="1712" />
        </branch>
        <instance x="1040" y="1552" name="XLXI_155" orien="R0" />
        <branch name="PCVal(15:0)">
            <wire x2="48" y1="1488" y2="1488" x1="16" />
            <wire x2="16" y1="1488" y2="1552" x1="16" />
            <wire x2="1488" y1="1552" y2="1552" x1="16" />
            <wire x2="272" y1="2224" y2="3232" x1="272" />
            <wire x2="2208" y1="3232" y2="3232" x1="272" />
            <wire x2="352" y1="2224" y2="2224" x1="272" />
            <wire x2="848" y1="2144" y2="2144" x1="352" />
            <wire x2="352" y1="2144" y2="2224" x1="352" />
            <wire x2="1488" y1="1296" y2="1296" x1="1424" />
            <wire x2="1504" y1="1296" y2="1296" x1="1488" />
            <wire x2="1488" y1="1296" y2="1360" x1="1488" />
            <wire x2="1488" y1="1360" y2="1552" x1="1488" />
            <wire x2="2208" y1="1360" y2="1360" x1="1488" />
            <wire x2="2208" y1="1360" y2="3232" x1="2208" />
            <wire x2="1504" y1="1280" y2="1296" x1="1504" />
            <wire x2="1600" y1="1280" y2="1280" x1="1504" />
        </branch>
        <branch name="XLXN_232(15:0)">
            <wire x2="1040" y1="1296" y2="1296" x1="976" />
            <wire x2="976" y1="1296" y2="1536" x1="976" />
            <wire x2="1472" y1="1536" y2="1536" x1="976" />
            <wire x2="1472" y1="944" y2="944" x1="1344" />
            <wire x2="1472" y1="944" y2="1536" x1="1472" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="2032" type="branch" />
            <wire x2="1440" y1="2032" y2="2032" x1="1424" />
            <wire x2="1440" y1="2032" y2="2064" x1="1440" />
            <wire x2="1568" y1="2064" y2="2064" x1="1440" />
        </branch>
        <branch name="MemoryAddress(14:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1840" type="branch" />
            <wire x2="1520" y1="1840" y2="1840" x1="1504" />
            <wire x2="1520" y1="1840" y2="1872" x1="1520" />
            <wire x2="1568" y1="1872" y2="1872" x1="1520" />
        </branch>
        <branch name="C_MDin">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="2464" type="branch" />
            <wire x2="752" y1="2464" y2="2464" x1="704" />
        </branch>
        <instance x="752" y="2624" name="XLXI_131" orien="R0">
        </instance>
        <instance x="5664" y="1632" name="XLXI_156" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5632" y="1792" type="branch" />
            <wire x2="5648" y1="1792" y2="1792" x1="5632" />
            <wire x2="5664" y1="1792" y2="1792" x1="5648" />
            <wire x2="5648" y1="1792" y2="2000" x1="5648" />
            <wire x2="5664" y1="2000" y2="2000" x1="5648" />
            <wire x2="5696" y1="2000" y2="2000" x1="5664" />
            <wire x2="6064" y1="2000" y2="2000" x1="5696" />
            <wire x2="6064" y1="1568" y2="2000" x1="6064" />
            <wire x2="6272" y1="1568" y2="1568" x1="6064" />
        </branch>
        <branch name="BOutput(15:0)">
            <wire x2="576" y1="1312" y2="1312" x1="496" />
            <wire x2="496" y1="1312" y2="1328" x1="496" />
            <wire x2="496" y1="1328" y2="3200" x1="496" />
            <wire x2="4464" y1="3200" y2="3200" x1="496" />
            <wire x2="672" y1="2528" y2="3552" x1="672" />
            <wire x2="3728" y1="3552" y2="3552" x1="672" />
            <wire x2="752" y1="2528" y2="2528" x1="672" />
            <wire x2="4464" y1="2128" y2="2128" x1="3728" />
            <wire x2="4464" y1="2128" y2="2256" x1="4464" />
            <wire x2="4608" y1="2256" y2="2256" x1="4464" />
            <wire x2="4464" y1="2256" y2="3200" x1="4464" />
            <wire x2="3728" y1="2128" y2="3552" x1="3728" />
            <wire x2="4400" y1="2032" y2="2032" x1="4304" />
            <wire x2="4464" y1="2032" y2="2032" x1="4400" />
            <wire x2="4464" y1="2032" y2="2128" x1="4464" />
            <wire x2="4400" y1="1968" y2="2032" x1="4400" />
        </branch>
        <branch name="XLXN_185(15:0)">
            <wire x2="5888" y1="1104" y2="1104" x1="544" />
            <wire x2="544" y1="1104" y2="1328" x1="544" />
            <wire x2="544" y1="1328" y2="2080" x1="544" />
            <wire x2="848" y1="2080" y2="2080" x1="544" />
            <wire x2="5888" y1="160" y2="160" x1="5872" />
            <wire x2="5888" y1="160" y2="1104" x1="5888" />
        </branch>
        <branch name="AOutput(15:0)">
            <wire x2="80" y1="1328" y2="1328" x1="32" />
            <wire x2="160" y1="1328" y2="1328" x1="80" />
            <wire x2="176" y1="1328" y2="1328" x1="160" />
            <wire x2="176" y1="1328" y2="1344" x1="176" />
            <wire x2="224" y1="1344" y2="1344" x1="176" />
            <wire x2="32" y1="1328" y2="2016" x1="32" />
            <wire x2="160" y1="2016" y2="2016" x1="32" />
            <wire x2="848" y1="2016" y2="2016" x1="160" />
            <wire x2="160" y1="2016" y2="2592" x1="160" />
            <wire x2="752" y1="2592" y2="2592" x1="160" />
            <wire x2="80" y1="1136" y2="1328" x1="80" />
            <wire x2="224" y1="1136" y2="1136" x1="80" />
            <wire x2="4400" y1="1136" y2="1136" x1="224" />
            <wire x2="4400" y1="1136" y2="1520" x1="4400" />
            <wire x2="4416" y1="1520" y2="1520" x1="4400" />
            <wire x2="4400" y1="1520" y2="1664" x1="4400" />
            <wire x2="4640" y1="1664" y2="1664" x1="4400" />
            <wire x2="224" y1="1136" y2="1248" x1="224" />
            <wire x2="576" y1="1248" y2="1248" x1="224" />
            <wire x2="3232" y1="2064" y2="2064" x1="3136" />
            <wire x2="3136" y1="2064" y2="2432" x1="3136" />
            <wire x2="4336" y1="2432" y2="2432" x1="3136" />
            <wire x2="4336" y1="1520" y2="1520" x1="4304" />
            <wire x2="4400" y1="1520" y2="1520" x1="4336" />
            <wire x2="4336" y1="1520" y2="2432" x1="4336" />
            <wire x2="4416" y1="1488" y2="1520" x1="4416" />
            <wire x2="4528" y1="1488" y2="1488" x1="4416" />
        </branch>
        <branch name="XLXN_233(15:0)">
            <wire x2="400" y1="1344" y2="1344" x1="352" />
            <wire x2="480" y1="1328" y2="1328" x1="400" />
            <wire x2="480" y1="1328" y2="1440" x1="480" />
            <wire x2="576" y1="1440" y2="1440" x1="480" />
            <wire x2="400" y1="1328" y2="1344" x1="400" />
        </branch>
        <branch name="CLK">
            <wire x2="144" y1="96" y2="368" x1="144" />
            <wire x2="208" y1="368" y2="368" x1="144" />
            <wire x2="656" y1="96" y2="96" x1="144" />
            <wire x2="656" y1="96" y2="672" x1="656" />
            <wire x2="560" y1="640" y2="640" x1="256" />
            <wire x2="560" y1="640" y2="672" x1="560" />
            <wire x2="656" y1="672" y2="672" x1="560" />
        </branch>
        <iomarker fontsize="28" x="256" y="640" name="CLK" orien="R180" />
        <branch name="XLXN_234">
            <wire x2="704" y1="240" y2="240" x1="592" />
            <wire x2="704" y1="240" y2="256" x1="704" />
            <wire x2="816" y1="256" y2="256" x1="704" />
        </branch>
        <branch name="ZERO">
            <wire x2="128" y1="64" y2="240" x1="128" />
            <wire x2="208" y1="240" y2="240" x1="128" />
            <wire x2="6112" y1="64" y2="64" x1="128" />
            <wire x2="6112" y1="64" y2="1472" x1="6112" />
            <wire x2="6112" y1="1472" y2="1472" x1="6048" />
        </branch>
        <instance x="208" y="496" name="XLXI_157" orien="R0" />
        <branch name="MemoryOut(15:0)">
            <wire x2="2240" y1="1872" y2="1872" x1="2144" />
            <wire x2="2336" y1="1840" y2="1840" x1="2240" />
            <wire x2="2336" y1="1840" y2="2096" x1="2336" />
            <wire x2="2528" y1="2096" y2="2096" x1="2336" />
            <wire x2="2336" y1="2096" y2="2320" x1="2336" />
            <wire x2="2976" y1="2320" y2="2320" x1="2336" />
            <wire x2="2368" y1="1840" y2="1840" x1="2336" />
            <wire x2="2240" y1="1840" y2="1872" x1="2240" />
            <wire x2="2976" y1="2192" y2="2320" x1="2976" />
            <wire x2="3232" y1="2192" y2="2192" x1="2976" />
        </branch>
        <branch name="XLXN_188(15:0)">
            <wire x2="1152" y1="2464" y2="2464" x1="1136" />
            <wire x2="1248" y1="2464" y2="2464" x1="1152" />
            <wire x2="1248" y1="2176" y2="2464" x1="1248" />
            <wire x2="1552" y1="2176" y2="2176" x1="1248" />
            <wire x2="1552" y1="1904" y2="2176" x1="1552" />
            <wire x2="1568" y1="1904" y2="1904" x1="1552" />
        </branch>
        <instance x="1568" y="1792" name="XLXI_123" orien="R0">
        </instance>
        <instance x="6272" y="1600" name="ALUOut" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="160" y="1312" name="XLXI_159" orien="R0">
        </instance>
    </sheet>
</drawing>