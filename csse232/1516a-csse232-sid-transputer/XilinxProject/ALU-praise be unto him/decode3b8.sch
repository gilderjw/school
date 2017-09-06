<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(2:0)" />
        <signal name="enable" />
        <signal name="A(0)" />
        <signal name="nA0" />
        <signal name="A(2)" />
        <signal name="nA2" />
        <signal name="nA1" />
        <signal name="A(1)" />
        <signal name="O0" />
        <signal name="O1" />
        <signal name="O2" />
        <signal name="O3" />
        <signal name="O5" />
        <signal name="O6" />
        <signal name="O7" />
        <signal name="O4" />
        <port polarity="Input" name="A(2:0)" />
        <port polarity="Input" name="enable" />
        <port polarity="Output" name="O0" />
        <port polarity="Output" name="O1" />
        <port polarity="Output" name="O2" />
        <port polarity="Output" name="O3" />
        <port polarity="Output" name="O5" />
        <port polarity="Output" name="O6" />
        <port polarity="Output" name="O7" />
        <port polarity="Output" name="O4" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A(0)" name="I" />
            <blockpin signalname="nA0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="A(1)" name="I" />
            <blockpin signalname="nA1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="A(2)" name="I" />
            <blockpin signalname="nA2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_4">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA2" name="I1" />
            <blockpin signalname="nA1" name="I2" />
            <blockpin signalname="nA0" name="I3" />
            <blockpin signalname="O0" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_8">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA2" name="I1" />
            <blockpin signalname="nA1" name="I2" />
            <blockpin signalname="A(0)" name="I3" />
            <blockpin signalname="O1" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_9">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA2" name="I1" />
            <blockpin signalname="A(1)" name="I2" />
            <blockpin signalname="nA0" name="I3" />
            <blockpin signalname="O2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_10">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA2" name="I1" />
            <blockpin signalname="A(1)" name="I2" />
            <blockpin signalname="A(0)" name="I3" />
            <blockpin signalname="O3" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_12">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="nA1" name="I2" />
            <blockpin signalname="A(0)" name="I3" />
            <blockpin signalname="O5" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_13">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="A(1)" name="I2" />
            <blockpin signalname="nA0" name="I3" />
            <blockpin signalname="O6" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_14">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="A(1)" name="I2" />
            <blockpin signalname="A(0)" name="I3" />
            <blockpin signalname="O7" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_11">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="nA1" name="I2" />
            <blockpin signalname="nA0" name="I3" />
            <blockpin signalname="O4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(2:0)">
            <wire x2="640" y1="240" y2="240" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="240" name="A(2:0)" orien="R180" />
        <branch name="enable">
            <wire x2="640" y1="400" y2="400" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="400" name="enable" orien="R180" />
        <instance x="1120" y="272" name="XLXI_1" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="240" type="branch" />
            <wire x2="1120" y1="240" y2="240" x1="1040" />
        </branch>
        <branch name="nA0">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="240" type="branch" />
            <wire x2="1440" y1="240" y2="240" x1="1344" />
        </branch>
        <instance x="1120" y="432" name="XLXI_6" orien="R0" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="400" type="branch" />
            <wire x2="1120" y1="400" y2="400" x1="1040" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="400" type="branch" />
            <wire x2="1440" y1="400" y2="400" x1="1344" />
        </branch>
        <instance x="1120" y="592" name="XLXI_7" orien="R0" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="560" type="branch" />
            <wire x2="1120" y1="560" y2="560" x1="1040" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="560" type="branch" />
            <wire x2="1440" y1="560" y2="560" x1="1344" />
        </branch>
        <instance x="2080" y="416" name="XLXI_4" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="160" type="branch" />
            <wire x2="2080" y1="160" y2="160" x1="2000" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="224" type="branch" />
            <wire x2="2080" y1="224" y2="224" x1="2000" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="288" type="branch" />
            <wire x2="2080" y1="288" y2="288" x1="2000" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="352" type="branch" />
            <wire x2="2080" y1="352" y2="352" x1="2000" />
        </branch>
        <branch name="O0">
            <wire x2="2400" y1="256" y2="256" x1="2336" />
        </branch>
        <instance x="2080" y="736" name="XLXI_8" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="480" type="branch" />
            <wire x2="2080" y1="480" y2="480" x1="2000" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="544" type="branch" />
            <wire x2="2080" y1="544" y2="544" x1="2000" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="608" type="branch" />
            <wire x2="2080" y1="608" y2="608" x1="2000" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="672" type="branch" />
            <wire x2="2080" y1="672" y2="672" x1="2000" />
        </branch>
        <branch name="O1">
            <wire x2="2400" y1="576" y2="576" x1="2336" />
        </branch>
        <instance x="2080" y="1056" name="XLXI_9" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="800" type="branch" />
            <wire x2="2080" y1="800" y2="800" x1="2000" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="864" type="branch" />
            <wire x2="2080" y1="864" y2="864" x1="2000" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="928" type="branch" />
            <wire x2="2080" y1="928" y2="928" x1="2000" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="992" type="branch" />
            <wire x2="2080" y1="992" y2="992" x1="2000" />
        </branch>
        <branch name="O2">
            <wire x2="2400" y1="896" y2="896" x1="2336" />
        </branch>
        <instance x="2080" y="1376" name="XLXI_10" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1120" type="branch" />
            <wire x2="2080" y1="1120" y2="1120" x1="2000" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1184" type="branch" />
            <wire x2="2080" y1="1184" y2="1184" x1="2000" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1248" type="branch" />
            <wire x2="2080" y1="1248" y2="1248" x1="2000" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1312" type="branch" />
            <wire x2="2080" y1="1312" y2="1312" x1="2000" />
        </branch>
        <branch name="O3">
            <wire x2="2400" y1="1216" y2="1216" x1="2336" />
        </branch>
        <instance x="2080" y="2016" name="XLXI_12" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1760" type="branch" />
            <wire x2="2080" y1="1760" y2="1760" x1="2000" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1824" type="branch" />
            <wire x2="2080" y1="1824" y2="1824" x1="2000" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1888" type="branch" />
            <wire x2="2080" y1="1888" y2="1888" x1="2000" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1952" type="branch" />
            <wire x2="2080" y1="1952" y2="1952" x1="2000" />
        </branch>
        <branch name="O5">
            <wire x2="2400" y1="1856" y2="1856" x1="2336" />
        </branch>
        <instance x="2080" y="2336" name="XLXI_13" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2080" type="branch" />
            <wire x2="2080" y1="2080" y2="2080" x1="2000" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2144" type="branch" />
            <wire x2="2080" y1="2144" y2="2144" x1="2000" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2208" type="branch" />
            <wire x2="2080" y1="2208" y2="2208" x1="2000" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2272" type="branch" />
            <wire x2="2080" y1="2272" y2="2272" x1="2000" />
        </branch>
        <branch name="O6">
            <wire x2="2400" y1="2176" y2="2176" x1="2336" />
        </branch>
        <instance x="2080" y="2656" name="XLXI_14" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2400" type="branch" />
            <wire x2="2080" y1="2400" y2="2400" x1="2000" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2464" type="branch" />
            <wire x2="2080" y1="2464" y2="2464" x1="2000" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2528" type="branch" />
            <wire x2="2080" y1="2528" y2="2528" x1="2000" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2592" type="branch" />
            <wire x2="2080" y1="2592" y2="2592" x1="2000" />
        </branch>
        <branch name="O7">
            <wire x2="2400" y1="2496" y2="2496" x1="2336" />
        </branch>
        <instance x="2080" y="1696" name="XLXI_11" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1440" type="branch" />
            <wire x2="2080" y1="1440" y2="1440" x1="2000" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1504" type="branch" />
            <wire x2="2080" y1="1504" y2="1504" x1="2000" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1568" type="branch" />
            <wire x2="2080" y1="1568" y2="1568" x1="2000" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1632" type="branch" />
            <wire x2="2080" y1="1632" y2="1632" x1="2000" />
        </branch>
        <branch name="O4">
            <wire x2="2400" y1="1536" y2="1536" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2400" y="256" name="O0" orien="R0" />
        <iomarker fontsize="28" x="2400" y="576" name="O1" orien="R0" />
        <iomarker fontsize="28" x="2400" y="896" name="O2" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1216" name="O3" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1536" name="O4" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1856" name="O5" orien="R0" />
        <iomarker fontsize="28" x="2400" y="2176" name="O6" orien="R0" />
        <iomarker fontsize="28" x="2400" y="2496" name="O7" orien="R0" />
    </sheet>
</drawing>