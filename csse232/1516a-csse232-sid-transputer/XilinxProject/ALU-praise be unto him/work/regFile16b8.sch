<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="low" />
        <signal name="CLK" />
        <signal name="DataIn(15:0)" />
        <signal name="XLXN_130" />
        <signal name="XLXN_132" />
        <signal name="XLXN_133" />
        <signal name="XLXN_134" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <signal name="Write" />
        <signal name="WriteAddr(2:0)" />
        <signal name="A(15:0)" />
        <signal name="H(15:0)" />
        <signal name="ReadAddrA(2:0)" />
        <signal name="ReadDataA(15:0)" />
        <signal name="ReadDataB(15:0)" />
        <signal name="ReadAddrB(2:0)" />
        <signal name="B(15:0)" />
        <signal name="C(15:0)" />
        <signal name="D(15:0)" />
        <signal name="E(15:0)" />
        <signal name="F(15:0)" />
        <signal name="G(15:0)" />
        <signal name="XLXN_142" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="DataIn(15:0)" />
        <port polarity="Input" name="Write" />
        <port polarity="Input" name="WriteAddr(2:0)" />
        <port polarity="Input" name="ReadAddrA(2:0)" />
        <port polarity="Output" name="ReadDataA(15:0)" />
        <port polarity="Output" name="ReadDataB(15:0)" />
        <port polarity="Input" name="ReadAddrB(2:0)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="mux16b8">
            <timestamp>2010-10-10T16:42:45</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
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
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
        </blockdef>
        <blockdef name="decode3b8">
            <timestamp>2010-10-10T16:51:14</timestamp>
            <rect width="256" x="64" y="-544" height="540" />
            <line x2="384" y1="-496" y2="-496" x1="320" />
            <line x2="384" y1="-432" y2="-432" x1="320" />
            <line x2="384" y1="-368" y2="-368" x1="320" />
            <line x2="384" y1="-304" y2="-304" x1="320" />
            <line x2="384" y1="-176" y2="-176" x1="320" />
            <line x2="384" y1="-112" y2="-112" x1="320" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <line x2="384" y1="-240" y2="-240" x1="320" />
            <rect width="64" x="0" y="-444" height="24" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <line x2="0" y1="-496" y2="-496" x1="64" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="low" name="G" />
        </block>
        <block symbolname="mux16b8" name="XLXI_36">
            <blockpin signalname="A(15:0)" name="A(15:0)" />
            <blockpin signalname="B(15:0)" name="B(15:0)" />
            <blockpin signalname="C(15:0)" name="C(15:0)" />
            <blockpin signalname="D(15:0)" name="D(15:0)" />
            <blockpin signalname="E(15:0)" name="E(15:0)" />
            <blockpin signalname="F(15:0)" name="F(15:0)" />
            <blockpin signalname="G(15:0)" name="G(15:0)" />
            <blockpin signalname="H(15:0)" name="H(15:0)" />
            <blockpin signalname="ReadAddrA(2:0)" name="S(2:0)" />
            <blockpin signalname="ReadDataA(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux16b8" name="XLXI_37">
            <blockpin signalname="A(15:0)" name="A(15:0)" />
            <blockpin signalname="B(15:0)" name="B(15:0)" />
            <blockpin signalname="C(15:0)" name="C(15:0)" />
            <blockpin signalname="D(15:0)" name="D(15:0)" />
            <blockpin signalname="E(15:0)" name="E(15:0)" />
            <blockpin signalname="F(15:0)" name="F(15:0)" />
            <blockpin signalname="G(15:0)" name="G(15:0)" />
            <blockpin signalname="H(15:0)" name="H(15:0)" />
            <blockpin signalname="ReadAddrB(2:0)" name="S(2:0)" />
            <blockpin signalname="ReadDataB(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="decode3b8" name="XLXI_38">
            <blockpin name="O0" />
            <blockpin signalname="XLXN_130" name="O1" />
            <blockpin signalname="XLXN_142" name="O2" />
            <blockpin signalname="XLXN_132" name="O3" />
            <blockpin signalname="XLXN_134" name="O5" />
            <blockpin signalname="XLXN_135" name="O6" />
            <blockpin signalname="XLXN_136" name="O7" />
            <blockpin signalname="XLXN_133" name="O4" />
            <blockpin signalname="WriteAddr(2:0)" name="A(2:0)" />
            <blockpin signalname="Write" name="enable" />
        </block>
        <block symbolname="fd16re" name="XLXI_54">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_130" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="B(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_55">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_142" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="C(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_56">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_132" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="D(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_57">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_133" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="E(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_58">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_134" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="F(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_59">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_135" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="G(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_60">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_136" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="H(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_61">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 16 Hexadecimal" />
            </attr>
            <blockpin signalname="A(15:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="CLK">
            <wire x2="640" y1="368" y2="368" x1="480" />
        </branch>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2320" y="240" type="branch" />
            <wire x2="2320" y1="240" y2="240" x1="2240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="768" type="branch" />
            <wire x2="1856" y1="768" y2="768" x1="1760" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="864" type="branch" />
            <wire x2="1856" y1="864" y2="864" x1="1760" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2320" y="640" type="branch" />
            <wire x2="2320" y1="640" y2="640" x1="2240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="1168" type="branch" />
            <wire x2="1856" y1="1168" y2="1168" x1="1760" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="1264" type="branch" />
            <wire x2="1856" y1="1264" y2="1264" x1="1760" />
        </branch>
        <branch name="C(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2320" y="1040" type="branch" />
            <wire x2="2320" y1="1040" y2="1040" x1="2240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="1568" type="branch" />
            <wire x2="1856" y1="1568" y2="1568" x1="1760" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="1664" type="branch" />
            <wire x2="1856" y1="1664" y2="1664" x1="1760" />
        </branch>
        <branch name="D(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2320" y="1440" type="branch" />
            <wire x2="2320" y1="1440" y2="1440" x1="2240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="1968" type="branch" />
            <wire x2="1856" y1="1968" y2="1968" x1="1760" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="2064" type="branch" />
            <wire x2="1856" y1="2064" y2="2064" x1="1760" />
        </branch>
        <branch name="E(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2320" y="1840" type="branch" />
            <wire x2="2320" y1="1840" y2="1840" x1="2240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="2368" type="branch" />
            <wire x2="1856" y1="2368" y2="2368" x1="1760" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="2464" type="branch" />
            <wire x2="1856" y1="2464" y2="2464" x1="1760" />
        </branch>
        <branch name="F(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2320" y="2240" type="branch" />
            <wire x2="2320" y1="2240" y2="2240" x1="2240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="2768" type="branch" />
            <wire x2="1856" y1="2768" y2="2768" x1="1760" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="2864" type="branch" />
            <wire x2="1856" y1="2864" y2="2864" x1="1760" />
        </branch>
        <branch name="G(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2320" y="2640" type="branch" />
            <wire x2="2320" y1="2640" y2="2640" x1="2240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="3168" type="branch" />
            <wire x2="1856" y1="3168" y2="3168" x1="1760" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1760" y="3264" type="branch" />
            <wire x2="1856" y1="3264" y2="3264" x1="1760" />
        </branch>
        <branch name="H(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2320" y="3040" type="branch" />
            <wire x2="2320" y1="3040" y2="3040" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="480" y="240" name="DataIn(15:0)" orien="R180" />
        <branch name="XLXN_130">
            <wire x2="1456" y1="608" y2="608" x1="960" />
            <wire x2="1456" y1="608" y2="704" x1="1456" />
            <wire x2="1856" y1="704" y2="704" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="480" y="368" name="CLK" orien="R180" />
        <branch name="Write">
            <wire x2="576" y1="544" y2="544" x1="480" />
        </branch>
        <branch name="WriteAddr(2:0)">
            <wire x2="576" y1="608" y2="608" x1="480" />
        </branch>
        <branch name="XLXN_132">
            <wire x2="1328" y1="736" y2="736" x1="960" />
            <wire x2="1328" y1="736" y2="1504" x1="1328" />
            <wire x2="1856" y1="1504" y2="1504" x1="1328" />
        </branch>
        <branch name="XLXN_133">
            <wire x2="1264" y1="800" y2="800" x1="960" />
            <wire x2="1264" y1="800" y2="1904" x1="1264" />
            <wire x2="1856" y1="1904" y2="1904" x1="1264" />
        </branch>
        <branch name="XLXN_134">
            <wire x2="1200" y1="864" y2="864" x1="960" />
            <wire x2="1200" y1="864" y2="2304" x1="1200" />
            <wire x2="1856" y1="2304" y2="2304" x1="1200" />
        </branch>
        <branch name="XLXN_135">
            <wire x2="1136" y1="928" y2="928" x1="960" />
            <wire x2="1136" y1="928" y2="2704" x1="1136" />
            <wire x2="1856" y1="2704" y2="2704" x1="1136" />
        </branch>
        <branch name="XLXN_136">
            <wire x2="1072" y1="992" y2="992" x1="960" />
            <wire x2="1072" y1="992" y2="3104" x1="1072" />
            <wire x2="1856" y1="3104" y2="3104" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="480" y="544" name="Write" orien="R180" />
        <iomarker fontsize="28" x="480" y="608" name="WriteAddr(2:0)" orien="R180" />
        <instance x="336" y="1344" name="XLXI_3" orien="R0" />
        <branch name="low">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="480" y="1200" type="branch" />
            <wire x2="480" y1="1200" y2="1200" x1="400" />
            <wire x2="400" y1="1200" y2="1216" x1="400" />
        </branch>
        <instance x="2976" y="784" name="XLXI_36" orien="R0">
        </instance>
        <instance x="2976" y="1504" name="XLXI_37" orien="R0">
        </instance>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="240" type="branch" />
            <wire x2="2976" y1="240" y2="240" x1="2880" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="304" type="branch" />
            <wire x2="2976" y1="304" y2="304" x1="2880" />
        </branch>
        <branch name="C(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="368" type="branch" />
            <wire x2="2976" y1="368" y2="368" x1="2880" />
        </branch>
        <branch name="D(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="432" type="branch" />
            <wire x2="2976" y1="432" y2="432" x1="2880" />
        </branch>
        <branch name="E(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="496" type="branch" />
            <wire x2="2976" y1="496" y2="496" x1="2880" />
        </branch>
        <branch name="F(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="560" type="branch" />
            <wire x2="2976" y1="560" y2="560" x1="2880" />
        </branch>
        <branch name="G(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="624" type="branch" />
            <wire x2="2976" y1="624" y2="624" x1="2880" />
        </branch>
        <branch name="H(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="688" type="branch" />
            <wire x2="2976" y1="688" y2="688" x1="2880" />
        </branch>
        <branch name="ReadAddrA(2:0)">
            <wire x2="2960" y1="752" y2="752" x1="2720" />
            <wire x2="2976" y1="752" y2="752" x1="2960" />
        </branch>
        <branch name="ReadDataA(15:0)">
            <wire x2="3376" y1="240" y2="240" x1="3360" />
            <wire x2="3600" y1="240" y2="240" x1="3376" />
        </branch>
        <branch name="ReadDataB(15:0)">
            <wire x2="3376" y1="960" y2="960" x1="3360" />
            <wire x2="3600" y1="960" y2="960" x1="3376" />
        </branch>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="960" type="branch" />
            <wire x2="2976" y1="960" y2="960" x1="2880" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="1024" type="branch" />
            <wire x2="2976" y1="1024" y2="1024" x1="2880" />
        </branch>
        <branch name="C(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="1088" type="branch" />
            <wire x2="2976" y1="1088" y2="1088" x1="2880" />
        </branch>
        <branch name="D(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="1152" type="branch" />
            <wire x2="2976" y1="1152" y2="1152" x1="2880" />
        </branch>
        <branch name="E(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="1216" type="branch" />
            <wire x2="2976" y1="1216" y2="1216" x1="2880" />
        </branch>
        <branch name="F(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="1280" type="branch" />
            <wire x2="2976" y1="1280" y2="1280" x1="2880" />
        </branch>
        <branch name="G(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="1344" type="branch" />
            <wire x2="2976" y1="1344" y2="1344" x1="2880" />
        </branch>
        <branch name="H(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2880" y="1408" type="branch" />
            <wire x2="2976" y1="1408" y2="1408" x1="2880" />
        </branch>
        <branch name="ReadAddrB(2:0)">
            <wire x2="2976" y1="1472" y2="1472" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="2880" y="1472" name="ReadAddrB(2:0)" orien="R180" />
        <iomarker fontsize="28" x="3600" y="240" name="ReadDataA(15:0)" orien="R0" />
        <iomarker fontsize="28" x="3600" y="960" name="ReadDataB(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2720" y="752" name="ReadAddrA(2:0)" orien="R180" />
        <instance x="576" y="1040" name="XLXI_38" orien="R0">
        </instance>
        <branch name="XLXN_142">
            <wire x2="1408" y1="672" y2="672" x1="960" />
            <wire x2="1408" y1="672" y2="1104" x1="1408" />
            <wire x2="1856" y1="1104" y2="1104" x1="1408" />
        </branch>
        <instance x="1856" y="1296" name="XLXI_55" orien="R0" />
        <instance x="1856" y="1696" name="XLXI_56" orien="R0" />
        <instance x="1856" y="2096" name="XLXI_57" orien="R0" />
        <instance x="1856" y="2496" name="XLXI_58" orien="R0" />
        <instance x="1856" y="2896" name="XLXI_59" orien="R0" />
        <instance x="1856" y="3296" name="XLXI_60" orien="R0" />
        <instance x="1856" y="896" name="XLXI_54" orien="R0" />
        <branch name="DataIn(15:0)">
            <wire x2="1520" y1="240" y2="240" x1="480" />
            <wire x2="1520" y1="240" y2="640" x1="1520" />
            <wire x2="1520" y1="640" y2="1040" x1="1520" />
            <wire x2="1520" y1="1040" y2="1440" x1="1520" />
            <wire x2="1520" y1="1440" y2="1840" x1="1520" />
            <wire x2="1520" y1="1840" y2="2240" x1="1520" />
            <wire x2="1520" y1="2240" y2="2640" x1="1520" />
            <wire x2="1520" y1="2640" y2="3040" x1="1520" />
            <wire x2="1856" y1="3040" y2="3040" x1="1520" />
            <wire x2="1856" y1="2640" y2="2640" x1="1520" />
            <wire x2="1856" y1="2240" y2="2240" x1="1520" />
            <wire x2="1856" y1="1840" y2="1840" x1="1520" />
            <wire x2="1856" y1="1440" y2="1440" x1="1520" />
            <wire x2="1856" y1="1040" y2="1040" x1="1520" />
            <wire x2="1856" y1="640" y2="640" x1="1520" />
        </branch>
        <instance x="2096" y="208" name="XLXI_61" orien="R0">
        </instance>
    </sheet>
</drawing>
