<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Ainput(15:0)" />
        <signal name="Binput(15:0)" />
        <signal name="opcodeinput(3:0)" />
        <signal name="XLXN_4(15:0)" />
        <signal name="CLK" />
        <signal name="AddressIn(14:0)" />
        <signal name="Writeenable(0:0)" />
        <signal name="dataOut(15:0)" />
        <port polarity="Input" name="Ainput(15:0)" />
        <port polarity="Input" name="Binput(15:0)" />
        <port polarity="Input" name="opcodeinput(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="AddressIn(14:0)" />
        <port polarity="Input" name="Writeenable(0:0)" />
        <port polarity="Output" name="dataOut(15:0)" />
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
        <blockdef name="ALU">
            <timestamp>2015-11-9T23:37:25</timestamp>
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
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <block symbolname="memory" name="XLXI_1">
            <blockpin signalname="AddressIn(14:0)" name="addra(14:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="dina(15:0)" />
            <blockpin name="ena" />
            <blockpin signalname="Writeenable(0:0)" name="wea(0:0)" />
            <blockpin signalname="CLK" name="clka" />
            <blockpin signalname="dataOut(15:0)" name="douta(15:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_2">
            <blockpin signalname="Ainput(15:0)" name="a(15:0)" />
            <blockpin signalname="Binput(15:0)" name="b(15:0)" />
            <blockpin signalname="opcodeinput(3:0)" name="opcode(3:0)" />
            <blockpin name="cout" />
            <blockpin name="zero" />
            <blockpin name="error" />
            <blockpin signalname="XLXN_4(15:0)" name="r(15:0)" />
            <blockpin name="compareVal(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="672" y="864" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2336" y="1360" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Ainput(15:0)">
            <wire x2="2320" y1="1136" y2="1136" x1="1984" />
            <wire x2="2336" y1="1136" y2="1136" x1="2320" />
        </branch>
        <branch name="Binput(15:0)">
            <wire x2="2320" y1="1200" y2="1200" x1="2096" />
            <wire x2="2336" y1="1200" y2="1200" x1="2320" />
        </branch>
        <branch name="opcodeinput(3:0)">
            <wire x2="2320" y1="1328" y2="1328" x1="2080" />
            <wire x2="2336" y1="1328" y2="1328" x1="2320" />
        </branch>
        <branch name="XLXN_4(15:0)">
            <wire x2="608" y1="832" y2="976" x1="608" />
            <wire x2="672" y1="976" y2="976" x1="608" />
            <wire x2="2784" y1="832" y2="832" x1="608" />
            <wire x2="2784" y1="832" y2="1328" x1="2784" />
            <wire x2="2736" y1="1328" y2="1328" x1="2720" />
            <wire x2="2784" y1="1328" y2="1328" x1="2736" />
        </branch>
        <branch name="CLK">
            <wire x2="432" y1="1184" y2="1184" x1="320" />
            <wire x2="656" y1="1184" y2="1184" x1="432" />
            <wire x2="432" y1="848" y2="1184" x1="432" />
            <wire x2="2192" y1="848" y2="848" x1="432" />
            <wire x2="2192" y1="848" y2="1456" x1="2192" />
            <wire x2="2336" y1="1456" y2="1456" x1="2192" />
            <wire x2="672" y1="1136" y2="1136" x1="656" />
            <wire x2="656" y1="1136" y2="1184" x1="656" />
        </branch>
        <branch name="AddressIn(14:0)">
            <wire x2="656" y1="944" y2="944" x1="336" />
            <wire x2="672" y1="944" y2="944" x1="656" />
        </branch>
        <branch name="Writeenable(0:0)">
            <wire x2="656" y1="1040" y2="1040" x1="272" />
            <wire x2="656" y1="1040" y2="1072" x1="656" />
            <wire x2="672" y1="1072" y2="1072" x1="656" />
        </branch>
        <branch name="dataOut(15:0)">
            <wire x2="1264" y1="944" y2="944" x1="1248" />
            <wire x2="1472" y1="944" y2="944" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1328" name="opcodeinput(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2096" y="1200" name="Binput(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1984" y="1136" name="Ainput(15:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="1184" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="272" y="1040" name="Writeenable(0:0)" orien="R180" />
        <iomarker fontsize="28" x="336" y="944" name="AddressIn(14:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="944" name="dataOut(15:0)" orien="R0" />
    </sheet>
</drawing>