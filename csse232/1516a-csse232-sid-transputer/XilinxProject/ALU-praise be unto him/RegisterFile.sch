<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RD(3:0)" />
        <signal name="Output(15:0)" />
        <signal name="Output(0)" />
        <signal name="Output(1)" />
        <signal name="Output(2)" />
        <signal name="Output(3)" />
        <signal name="Output(4)" />
        <signal name="Output(5)" />
        <signal name="Output(6)" />
        <signal name="Output(7)" />
        <signal name="Output(15)" />
        <signal name="Output(14)" />
        <signal name="Output(8)" />
        <signal name="Output(9)" />
        <signal name="Output(10)" />
        <signal name="Output(11)" />
        <signal name="Output(13)" />
        <signal name="Output(12)" />
        <port polarity="Input" name="RD(3:0)" />
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
        <blockdef name="WriteDecoder">
            <timestamp>2015-10-24T21:27:59</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="reg16" name="Register">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(0)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_3">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(1)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_4">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(3)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_5">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(2)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_6">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(4)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_7">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(5)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_8">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(7)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_9">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(6)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_10">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(8)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_11">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(9)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_12">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(11)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_13">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(10)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_14">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(12)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_15">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(13)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_16">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(15)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_17">
            <blockpin name="I(15:0)" />
            <blockpin signalname="Output(14)" name="Write" />
            <blockpin name="CLK" />
            <blockpin name="O(15:0)" />
        </block>
        <block symbolname="WriteDecoder" name="XLXI_18">
            <blockpin signalname="RD(3:0)" name="RD(3:0)" />
            <blockpin signalname="Output(15:0)" name="Output(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="336" name="Register" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1008" y="592" name="XLXI_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1008" y="1136" name="XLXI_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="992" y="1440" name="XLXI_6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="992" y="1696" name="XLXI_7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="992" y="2240" name="XLXI_8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="992" y="1984" name="XLXI_9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2080" y="336" name="XLXI_10" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2080" y="592" name="XLXI_11" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2080" y="1136" name="XLXI_12" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2080" y="880" name="XLXI_13" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2064" y="1440" name="XLXI_14" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2064" y="1696" name="XLXI_15" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2064" y="2240" name="XLXI_16" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2064" y="1984" name="XLXI_17" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="RD(3:0)">
            <wire x2="240" y1="272" y2="272" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="272" name="RD(3:0)" orien="R180" />
        <instance x="240" y="304" name="XLXI_18" orien="R0">
        </instance>
        <branch name="Output(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="718" y="272" type="branch" />
            <wire x2="672" y1="272" y2="272" x1="624" />
            <wire x2="718" y1="272" y2="272" x1="672" />
            <wire x2="784" y1="272" y2="272" x1="718" />
            <wire x2="816" y1="272" y2="272" x1="784" />
        </branch>
        <branch name="Output(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="956" y="240" type="branch" />
            <wire x2="956" y1="240" y2="240" x1="928" />
            <wire x2="1008" y1="240" y2="240" x1="956" />
        </branch>
        <branch name="Output(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="956" y="496" type="branch" />
            <wire x2="956" y1="496" y2="496" x1="928" />
            <wire x2="1008" y1="496" y2="496" x1="956" />
        </branch>
        <instance x="1008" y="880" name="XLXI_5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Output(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="784" type="branch" />
            <wire x2="1008" y1="784" y2="784" x1="896" />
        </branch>
        <branch name="Output(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1040" type="branch" />
            <wire x2="1008" y1="1040" y2="1040" x1="896" />
        </branch>
        <branch name="Output(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1344" type="branch" />
            <wire x2="992" y1="1344" y2="1344" x1="864" />
        </branch>
        <branch name="Output(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1600" type="branch" />
            <wire x2="992" y1="1600" y2="1600" x1="880" />
        </branch>
        <branch name="Output(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="1888" type="branch" />
            <wire x2="992" y1="1888" y2="1888" x1="864" />
        </branch>
        <branch name="Output(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="2144" type="branch" />
            <wire x2="992" y1="2144" y2="2144" x1="848" />
        </branch>
        <branch name="Output(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="2144" type="branch" />
            <wire x2="2064" y1="2144" y2="2144" x1="1872" />
        </branch>
        <branch name="Output(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1888" type="branch" />
            <wire x2="2064" y1="1888" y2="1888" x1="1888" />
        </branch>
        <branch name="Output(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="240" type="branch" />
            <wire x2="2080" y1="240" y2="240" x1="1936" />
        </branch>
        <branch name="Output(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="496" type="branch" />
            <wire x2="2080" y1="496" y2="496" x1="1968" />
        </branch>
        <branch name="Output(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="784" type="branch" />
            <wire x2="2080" y1="784" y2="784" x1="1920" />
        </branch>
        <branch name="Output(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1040" type="branch" />
            <wire x2="2080" y1="1040" y2="1040" x1="1904" />
        </branch>
        <branch name="Output(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1600" type="branch" />
            <wire x2="2064" y1="1600" y2="1600" x1="1888" />
        </branch>
        <branch name="Output(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1344" type="branch" />
            <wire x2="2064" y1="1344" y2="1344" x1="1904" />
        </branch>
    </sheet>
</drawing>