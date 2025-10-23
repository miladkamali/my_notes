<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="SLF4J" FOLDED="false" ID="ID_42532754" CREATED="1554035669346" MODIFIED="1554035796874" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="5" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Log levels" POSITION="right" ID="ID_994385380" CREATED="1554035724696" MODIFIED="1554035729817">
<edge COLOR="#ff0000"/>
<node TEXT="1 Fatal" ID="ID_1464635131" CREATED="1554035733036" MODIFIED="1554035739808"/>
<node TEXT="2 Error" ID="ID_1289231100" CREATED="1554035740481" MODIFIED="1554035746116"/>
<node TEXT="3 Warning" ID="ID_8948055" CREATED="1554035747266" MODIFIED="1554035752151"/>
<node TEXT="4 Info" ID="ID_1133169808" CREATED="1554035752585" MODIFIED="1554035755804"/>
<node TEXT="5 Debug" ID="ID_1405161473" CREATED="1554035756167" MODIFIED="1554035760873"/>
<node TEXT="6 Trace" ID="ID_1328046175" CREATED="1554035761275" MODIFIED="1554035771071"/>
</node>
<node TEXT="Bindings" FOLDED="true" POSITION="right" ID="ID_148269974" CREATED="1554035822962" MODIFIED="1554035826625">
<edge COLOR="#0000ff"/>
<node TEXT="LogBack logging framework" ID="ID_1572289827" CREATED="1554035828557" MODIFIED="1554035881296"/>
<node TEXT="Simple Logging implementation" ID="ID_861894728" CREATED="1554035833870" MODIFIED="1554035892119"/>
<node TEXT="Jakarta commons logging framework" ID="ID_1373690809" CREATED="1554035855875" MODIFIED="1554035905743"/>
<node TEXT="Log4j Logging framework" ID="ID_439417355" CREATED="1554035906264" MODIFIED="1554035924040"/>
<node TEXT="Java.Util.Logging framework" ID="ID_1375931920" CREATED="1554035924864" MODIFIED="1554035934944"/>
<node TEXT="jar files" ID="ID_1043974386" CREATED="1554036016563" MODIFIED="1554036019963">
<node TEXT="slf4j-nop-x.x.jar" ID="ID_1924729306" CREATED="1554036022768" MODIFIED="1554036045170"/>
<node TEXT="slf4j-simple-x.x.jar" ID="ID_774017192" CREATED="1554036046613" MODIFIED="1554036055201"/>
<node TEXT="slf4j-jcl-x.x.jar" ID="ID_680059658" CREATED="1554036055984" MODIFIED="1554036066440"/>
<node TEXT="slf4j-jdk14-x.x.jar" ID="ID_1213233332" CREATED="1554036067009" MODIFIED="1554036077786"/>
<node TEXT="slf4j-log4j12-x.x.jar" ID="ID_1565457511" CREATED="1554036089975" MODIFIED="1554036093034"/>
</node>
</node>
<node TEXT="slf4j-api" FOLDED="true" POSITION="right" ID="ID_1246705917" CREATED="1554035966620" MODIFIED="1554035979273">
<edge COLOR="#00ff00"/>
<node TEXT="Maven Dependency" ID="ID_1361845893" CREATED="1554036164649" MODIFIED="1554036204969"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&lt;dependency&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;groupId&gt;org.slf4j&lt;/groupId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;artifactId&gt;slf4j-api&lt;/artifactId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;version&gt;1.7.25&lt;/version&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&lt;/dependency&gt;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Logger Interface" FOLDED="true" ID="ID_1019405456" CREATED="1554036306996" MODIFIED="1554036341338">
<node TEXT="1&#xa;void debug(String msg)&#xa;&#xa;This method logs a message at the DEBUG level.&#xa;&#xa;2&#xa;void error(String msg)&#xa;&#xa;This method logs a message at the ERROR level.&#xa;&#xa;3&#xa;void info(String msg)&#xa;&#xa;This method logs a message at the INFO level.&#xa;&#xa;4&#xa;void trace(String msg)&#xa;&#xa;This method logs a message at the TRACE level.&#xa;&#xa;5&#xa;void warn(String msg)&#xa;&#xa;This method logs a message at the WARN level." ID="ID_255811028" CREATED="1554036336242" MODIFIED="1554036341334"/>
</node>
<node TEXT="LoggerFactory" FOLDED="true" ID="ID_440233656" CREATED="1554036353444" MODIFIED="1554036378068">
<node TEXT="Logger getLogger(String name)" ID="ID_668279614" CREATED="1554036388900" MODIFIED="1554036403876"/>
</node>
<node TEXT="Profiler" FOLDED="true" ID="ID_1652601112" CREATED="1554036447939" MODIFIED="1554036453435">
<node TEXT="1&#xa;void start(String name)&#xa;&#xa;This method will start a new child stop watch (named) and, stops the earlier child stopwatches (or, time instruments).&#xa;&#xa;2&#xa;TimeInstrument stop()&#xa;&#xa;This method will stop the recent child stopwatch and the global stopwatch and return the current Time Instrument.&#xa;&#xa;3&#xa;void setLogger(Logger logger)&#xa;&#xa;This method accepts a Logger object and associates the specified logger to the current Profiler.&#xa;&#xa;4&#xa;void log()&#xa;&#xa;Logs the contents of the current time instrument that is associated with a logger.&#xa;&#xa;5&#xa;void print()&#xa;&#xa;Prints the contents of the current time instrument." ID="ID_1697172956" CREATED="1554036455270" MODIFIED="1554036468072"/>
</node>
</node>
<node TEXT="log4j" FOLDED="true" POSITION="left" ID="ID_1270344909" CREATED="1554037696910" MODIFIED="1554037702806">
<edge COLOR="#ff00ff"/>
<node TEXT="maven" ID="ID_1292084153" CREATED="1554037706397" MODIFIED="1554037777725"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;dependency&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;groupId&gt;org.apache.logging.log4j&lt;/groupId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;artifactId&gt;log4j-slf4j-impl&lt;/artifactId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;version&gt;2.10.0&lt;/version&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;/dependency&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;dependency&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;groupId&gt;org.apache.logging.log4j&lt;/groupId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;artifactId&gt;log4j-core&lt;/artifactId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;version&gt;2.10.0&lt;/version&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;/dependency&gt;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Config" ID="ID_1597489942" CREATED="1554037788494" MODIFIED="1554037814190">
<node TEXT="log4j2.xml" ID="ID_949555241" CREATED="1554037816772" MODIFIED="1554037829931"/>
</node>
</node>
</node>
</map>
