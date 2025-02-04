<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="Comparison" />
        <signal name="PCWrite" />
        <signal name="MDin" />
        <signal name="MRead" />
        <signal name="MWrite(0:0)" />
        <signal name="RFRead" />
        <signal name="RDWrite" />
        <signal name="SPWrite" />
        <signal name="AWrite" />
        <signal name="BWrite" />
        <signal name="ALUInA" />
        <signal name="ALUOutWrite" />
        <signal name="Branch" />
        <signal name="SPRel" />
        <signal name="PshPop" />
        <signal name="PCSrc(1:0)" />
        <signal name="MAddr(1:0)" />
        <signal name="RFWA(1:0)" />
        <signal name="RFWD(2:0)" />
        <signal name="ALUInB(1:0)" />
        <signal name="ALUOp(3:0)" />
        <signal name="d2a(15:0)" />
        <signal name="d2a(15:12)" />
        <signal name="PC(15:0)" />
        <signal name="PC(14:0)" />
        <signal name="XLXN_3(15:0)" />
        <signal name="CrtState(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Comparison" />
        <port polarity="Output" name="PCWrite" />
        <port polarity="Output" name="MDin" />
        <port polarity="Output" name="MRead" />
        <port polarity="Output" name="MWrite(0:0)" />
        <port polarity="Output" name="RFRead" />
        <port polarity="Output" name="RDWrite" />
        <port polarity="Output" name="SPWrite" />
        <port polarity="Output" name="AWrite" />
        <port polarity="Output" name="BWrite" />
        <port polarity="Output" name="ALUInA" />
        <port polarity="Output" name="ALUOutWrite" />
        <port polarity="Output" name="Branch" />
        <port polarity="Output" name="SPRel" />
        <port polarity="Output" name="PshPop" />
        <port polarity="Output" name="PCSrc(1:0)" />
        <port polarity="Output" name="MAddr(1:0)" />
        <port polarity="Output" name="RFWA(1:0)" />
        <port polarity="Output" name="RFWD(2:0)" />
        <port polarity="Output" name="ALUInB(1:0)" />
        <port polarity="Output" name="ALUOp(3:0)" />
        <port polarity="Output" name="d2a(15:0)" />
        <port polarity="Output" name="PC(15:0)" />
        <port polarity="Output" name="CrtState(3:0)" />
        <blockdef name="AluTheGOD">
            <timestamp>2015-11-11T10:15:41</timestamp>
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
        <blockdef name="reg16">
            <timestamp>2015-11-3T1:30:37</timestamp>
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
        <blockdef name="memory">
            <timestamp>2015-11-11T10:21:6</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <block symbolname="reg16" name="XLXI_2">
            <blockpin signalname="XLXN_3(15:0)" name="I(15:0)" />
            <blockpin signalname="PCWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="PC(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="Addby2" name="XLXI_3">
            <blockpin signalname="PC(15:0)" name="oldPC(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="nextPC(15:0)" />
        </block>
        <block symbolname="memory" name="XLXI_4">
            <blockpin signalname="PC(14:0)" name="addra(14:0)" />
            <blockpin name="dina(15:0)" />
            <blockpin signalname="MRead" name="ena" />
            <blockpin name="wea(0:0)" />
            <blockpin signalname="CLK" name="clka" />
            <blockpin signalname="d2a(15:0)" name="douta(15:0)" />
        </block>
        <block symbolname="AluTheGOD" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="d2a(15:12)" name="Opcode(3:0)" />
            <blockpin signalname="PCWrite" name="PCWrite" />
            <blockpin signalname="MDin" name="MDin" />
            <blockpin signalname="MRead" name="MRead" />
            <blockpin signalname="MWrite(0:0)" name="MWrite" />
            <blockpin signalname="RFRead" name="RFRead" />
            <blockpin signalname="RDWrite" name="RDWrite" />
            <blockpin signalname="SPWrite" name="SPWrite" />
            <blockpin signalname="AWrite" name="AWrite" />
            <blockpin signalname="BWrite" name="BWrite" />
            <blockpin signalname="ALUInA" name="ALUInA" />
            <blockpin signalname="ALUOutWrite" name="ALUOutWrite" />
            <blockpin signalname="Branch" name="Branch" />
            <blockpin signalname="SPRel" name="SPRel" />
            <blockpin signalname="PshPop" name="PshPop" />
            <blockpin name="IRWrite" />
            <blockpin signalname="PCSrc(1:0)" name="PCSrc(1:0)" />
            <blockpin signalname="MAddr(1:0)" name="MAddr(1:0)" />
            <blockpin signalname="RFWA(1:0)" name="RFWA(1:0)" />
            <blockpin signalname="RFWD(2:0)" name="RFWD(2:0)" />
            <blockpin signalname="ALUInB(1:0)" name="ALUInB(1:0)" />
            <blockpin signalname="ALUOp(3:0)" name="ALUOp(3:0)" />
            <blockpin signalname="CrtState(3:0)" name="CrtState(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1008" name="XLXI_2" orien="R0">
        </instance>
        <instance x="160" y="880" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="208" y="160" type="branch" />
            <wire x2="208" y1="160" y2="160" x1="160" />
            <wire x2="240" y1="160" y2="160" x1="208" />
        </branch>
        <iomarker fontsize="28" x="160" y="160" name="CLK" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="448" type="branch" />
            <wire x2="2464" y1="448" y2="448" x1="2416" />
        </branch>
        <branch name="Comparison">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1056" type="branch" />
            <wire x2="2384" y1="1056" y2="1056" x1="2352" />
            <wire x2="2464" y1="1056" y2="1056" x1="2384" />
        </branch>
        <branch name="PCWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="448" type="branch" />
            <wire x2="2928" y1="448" y2="448" x1="2848" />
            <wire x2="2944" y1="448" y2="448" x1="2928" />
        </branch>
        <branch name="MDin">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="512" type="branch" />
            <wire x2="2912" y1="512" y2="512" x1="2848" />
            <wire x2="2944" y1="512" y2="512" x1="2912" />
        </branch>
        <branch name="MRead">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="576" type="branch" />
            <wire x2="2912" y1="576" y2="576" x1="2848" />
            <wire x2="2944" y1="576" y2="576" x1="2912" />
        </branch>
        <branch name="MWrite(0:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="640" type="branch" />
            <wire x2="2928" y1="640" y2="640" x1="2848" />
            <wire x2="2944" y1="640" y2="640" x1="2928" />
        </branch>
        <branch name="RFRead">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="704" type="branch" />
            <wire x2="2928" y1="704" y2="704" x1="2848" />
            <wire x2="2944" y1="704" y2="704" x1="2928" />
        </branch>
        <branch name="RDWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="768" type="branch" />
            <wire x2="2896" y1="768" y2="768" x1="2848" />
            <wire x2="2944" y1="768" y2="768" x1="2896" />
        </branch>
        <branch name="SPWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="832" type="branch" />
            <wire x2="2880" y1="832" y2="832" x1="2848" />
            <wire x2="2944" y1="832" y2="832" x1="2880" />
        </branch>
        <branch name="AWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="896" type="branch" />
            <wire x2="2896" y1="896" y2="896" x1="2848" />
            <wire x2="2944" y1="896" y2="896" x1="2896" />
        </branch>
        <branch name="BWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="960" type="branch" />
            <wire x2="2880" y1="960" y2="960" x1="2848" />
            <wire x2="2944" y1="960" y2="960" x1="2880" />
        </branch>
        <branch name="ALUInA">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1024" type="branch" />
            <wire x2="2896" y1="1024" y2="1024" x1="2848" />
            <wire x2="2944" y1="1024" y2="1024" x1="2896" />
        </branch>
        <branch name="ALUOutWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="1088" type="branch" />
            <wire x2="2880" y1="1088" y2="1088" x1="2848" />
            <wire x2="2944" y1="1088" y2="1088" x1="2880" />
        </branch>
        <branch name="Branch">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1152" type="branch" />
            <wire x2="2896" y1="1152" y2="1152" x1="2848" />
            <wire x2="2944" y1="1152" y2="1152" x1="2896" />
        </branch>
        <branch name="SPRel">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1216" type="branch" />
            <wire x2="2896" y1="1216" y2="1216" x1="2848" />
            <wire x2="2944" y1="1216" y2="1216" x1="2896" />
        </branch>
        <branch name="PshPop">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="1280" type="branch" />
            <wire x2="2880" y1="1280" y2="1280" x1="2848" />
            <wire x2="2944" y1="1280" y2="1280" x1="2880" />
        </branch>
        <branch name="PCSrc(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1344" type="branch" />
            <wire x2="2896" y1="1344" y2="1344" x1="2848" />
            <wire x2="2944" y1="1344" y2="1344" x1="2896" />
        </branch>
        <branch name="MAddr(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1408" type="branch" />
            <wire x2="2912" y1="1408" y2="1408" x1="2848" />
            <wire x2="2944" y1="1408" y2="1408" x1="2912" />
        </branch>
        <branch name="RFWA(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1472" type="branch" />
            <wire x2="2912" y1="1472" y2="1472" x1="2848" />
            <wire x2="2944" y1="1472" y2="1472" x1="2912" />
        </branch>
        <branch name="RFWD(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1536" type="branch" />
            <wire x2="2896" y1="1536" y2="1536" x1="2848" />
            <wire x2="2944" y1="1536" y2="1536" x1="2896" />
        </branch>
        <branch name="ALUInB(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1600" type="branch" />
            <wire x2="2896" y1="1600" y2="1600" x1="2848" />
            <wire x2="2944" y1="1600" y2="1600" x1="2896" />
        </branch>
        <branch name="ALUOp(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1664" type="branch" />
            <wire x2="2912" y1="1664" y2="1664" x1="2848" />
            <wire x2="2944" y1="1664" y2="1664" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1056" name="Comparison" orien="R180" />
        <instance x="1456" y="288" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2944" y="448" name="PCWrite" orien="R0" />
        <iomarker fontsize="28" x="2944" y="512" name="MDin" orien="R0" />
        <iomarker fontsize="28" x="2944" y="576" name="MRead" orien="R0" />
        <iomarker fontsize="28" x="2944" y="640" name="MWrite(0:0)" orien="R0" />
        <iomarker fontsize="28" x="2944" y="704" name="RFRead" orien="R0" />
        <iomarker fontsize="28" x="2944" y="768" name="RDWrite" orien="R0" />
        <iomarker fontsize="28" x="2944" y="832" name="SPWrite" orien="R0" />
        <iomarker fontsize="28" x="2944" y="896" name="AWrite" orien="R0" />
        <iomarker fontsize="28" x="2944" y="960" name="BWrite" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1024" name="ALUInA" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1088" name="ALUOutWrite" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1152" name="Branch" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1216" name="SPRel" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1280" name="PshPop" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1344" name="PCSrc(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1408" name="MAddr(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1472" name="RFWA(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1536" name="RFWD(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1600" name="ALUInB(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1664" name="ALUOp(3:0)" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="560" type="branch" />
            <wire x2="1456" y1="560" y2="560" x1="1424" />
        </branch>
        <branch name="d2a(15:0)">
            <wire x2="2096" y1="368" y2="368" x1="2032" />
        </branch>
        <branch name="d2a(15:12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1664" type="branch" />
            <wire x2="2464" y1="1664" y2="1664" x1="2384" />
        </branch>
        <branch name="PC(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="736" type="branch" />
            <wire x2="96" y1="736" y2="848" x1="96" />
            <wire x2="160" y1="848" y2="848" x1="96" />
            <wire x2="576" y1="736" y2="736" x1="96" />
            <wire x2="816" y1="736" y2="736" x1="576" />
            <wire x2="1376" y1="736" y2="736" x1="816" />
            <wire x2="1376" y1="736" y2="848" x1="1376" />
            <wire x2="576" y1="672" y2="736" x1="576" />
            <wire x2="624" y1="672" y2="672" x1="576" />
            <wire x2="1376" y1="848" y2="848" x1="1312" />
        </branch>
        <branch name="PC(14:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="368" type="branch" />
            <wire x2="1456" y1="368" y2="368" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="2096" y="368" name="d2a(15:0)" orien="R0" />
        <iomarker fontsize="28" x="624" y="672" name="PC(15:0)" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="976" type="branch" />
            <wire x2="928" y1="976" y2="976" x1="880" />
        </branch>
        <branch name="PCWrite">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="912" type="branch" />
            <wire x2="928" y1="912" y2="912" x1="896" />
        </branch>
        <branch name="MRead">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="432" type="branch" />
            <wire x2="1456" y1="432" y2="432" x1="1408" />
        </branch>
        <branch name="XLXN_3(15:0)">
            <wire x2="928" y1="848" y2="848" x1="544" />
        </branch>
        <branch name="MWrite(0:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="1136" type="branch" />
            <wire x2="1392" y1="1136" y2="1136" x1="1184" />
            <wire x2="1392" y1="848" y2="1136" x1="1392" />
            <wire x2="1456" y1="848" y2="848" x1="1392" />
        </branch>
        <instance x="2464" y="1696" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CrtState(3:0)">
            <wire x2="2912" y1="1856" y2="1856" x1="2848" />
        </branch>
        <iomarker fontsize="28" x="2912" y="1856" name="CrtState(3:0)" orien="R0" />
    </sheet>
</drawing>