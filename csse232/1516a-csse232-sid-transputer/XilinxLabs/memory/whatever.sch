<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="memToControl(15:0)" />
        <signal name="addra(9:0)" />
        <signal name="dina(15:0)" />
        <signal name="wea" />
        <signal name="clock" />
        <signal name="alusrc" />
        <signal name="memtoreg" />
        <signal name="regdest" />
        <signal name="regwrite" />
        <signal name="memread" />
        <signal name="memwrite" />
        <signal name="branch" />
        <signal name="memToControl(15:10)" />
        <signal name="reset" />
        <port polarity="Output" name="memToControl(15:0)" />
        <port polarity="Input" name="addra(9:0)" />
        <port polarity="Input" name="dina(15:0)" />
        <port polarity="Input" name="wea" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="alusrc" />
        <port polarity="Output" name="memtoreg" />
        <port polarity="Output" name="regdest" />
        <port polarity="Output" name="regwrite" />
        <port polarity="Output" name="memread" />
        <port polarity="Output" name="memwrite" />
        <port polarity="Output" name="branch" />
        <port polarity="Input" name="reset" />
        <blockdef name="MIPS_control_unit">
            <timestamp>2015-9-30T16:30:52</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="blockmemory16kx1">
            <timestamp>2015-10-14T0:21:4</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <block symbolname="blockmemory16kx1" name="XLXI_2">
            <blockpin signalname="addra(9:0)" name="addra(9:0)" />
            <blockpin signalname="dina(15:0)" name="dina(15:0)" />
            <blockpin signalname="wea" name="wea(0:0)" />
            <blockpin signalname="clock" name="clka" />
            <blockpin signalname="memToControl(15:0)" name="douta(15:0)" />
        </block>
        <block symbolname="MIPS_control_unit" name="XLXI_1">
            <blockpin signalname="clock" name="CLK" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin signalname="memToControl(15:10)" name="Opcode(5:0)" />
            <blockpin signalname="alusrc" name="ALUSrc" />
            <blockpin signalname="memtoreg" name="MemtoReg" />
            <blockpin signalname="regdest" name="RegDst" />
            <blockpin signalname="regwrite" name="RegWrite" />
            <blockpin signalname="memread" name="MemRead" />
            <blockpin signalname="memwrite" name="MemWrite" />
            <blockpin signalname="branch" name="Branch" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1664" y="528" name="XLXI_2" orien="R0">
        </instance>
        <branch name="memToControl(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="608" type="branch" />
            <wire x2="2272" y1="608" y2="608" x1="2240" />
            <wire x2="2288" y1="608" y2="608" x1="2272" />
        </branch>
        <branch name="addra(9:0)">
            <wire x2="1648" y1="592" y2="608" x1="1648" />
            <wire x2="1664" y1="608" y2="608" x1="1648" />
        </branch>
        <branch name="dina(15:0)">
            <wire x2="1664" y1="640" y2="640" x1="1648" />
            <wire x2="1648" y1="640" y2="656" x1="1648" />
        </branch>
        <branch name="wea">
            <wire x2="1664" y1="736" y2="736" x1="1616" />
        </branch>
        <branch name="clock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="800" type="branch" />
            <wire x2="1664" y1="800" y2="800" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1616" y="736" name="wea" orien="R180" />
        <instance x="720" y="1152" name="XLXI_1" orien="R0">
        </instance>
        <branch name="memToControl(15:10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1120" type="branch" />
            <wire x2="704" y1="1120" y2="1120" x1="688" />
            <wire x2="720" y1="1120" y2="1120" x1="704" />
        </branch>
        <branch name="clock">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="736" type="branch" />
            <wire x2="720" y1="736" y2="736" x1="688" />
        </branch>
        <branch name="reset">
            <wire x2="720" y1="928" y2="928" x1="688" />
        </branch>
        <branch name="alusrc">
            <wire x2="1120" y1="736" y2="736" x1="1104" />
            <wire x2="1184" y1="736" y2="736" x1="1120" />
        </branch>
        <branch name="memtoreg">
            <wire x2="1120" y1="800" y2="800" x1="1104" />
            <wire x2="1184" y1="800" y2="800" x1="1120" />
        </branch>
        <branch name="regdest">
            <wire x2="1120" y1="864" y2="864" x1="1104" />
            <wire x2="1184" y1="864" y2="864" x1="1120" />
        </branch>
        <branch name="regwrite">
            <wire x2="1120" y1="928" y2="928" x1="1104" />
            <wire x2="1184" y1="928" y2="928" x1="1120" />
        </branch>
        <branch name="memread">
            <wire x2="1120" y1="992" y2="992" x1="1104" />
            <wire x2="1184" y1="992" y2="992" x1="1120" />
        </branch>
        <branch name="memwrite">
            <wire x2="1120" y1="1056" y2="1056" x1="1104" />
            <wire x2="1184" y1="1056" y2="1056" x1="1120" />
        </branch>
        <branch name="branch">
            <wire x2="1120" y1="1120" y2="1120" x1="1104" />
            <wire x2="1184" y1="1120" y2="1120" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="688" y="928" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1184" y="736" name="alusrc" orien="R0" />
        <iomarker fontsize="28" x="1184" y="800" name="memtoreg" orien="R0" />
        <iomarker fontsize="28" x="1184" y="864" name="regdest" orien="R0" />
        <iomarker fontsize="28" x="1184" y="928" name="regwrite" orien="R0" />
        <iomarker fontsize="28" x="1184" y="992" name="memread" orien="R0" />
        <iomarker fontsize="28" x="1184" y="1056" name="memwrite" orien="R0" />
        <iomarker fontsize="28" x="1184" y="1120" name="branch" orien="R0" />
        <branch name="clock">
            <wire x2="816" y1="304" y2="304" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="304" name="clock" orien="R180" />
        <iomarker fontsize="28" x="1648" y="592" name="addra(9:0)" orien="R180" />
        <iomarker fontsize="28" x="1648" y="656" name="dina(15:0)" orien="R180" />
        <iomarker fontsize="28" x="2288" y="608" name="memToControl(15:0)" orien="R0" />
    </sheet>
</drawing>