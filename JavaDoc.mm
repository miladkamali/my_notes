<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="JavaDoc" FOLDED="false" ID="ID_91622259" CREATED="1556879685042" MODIFIED="1556879693761" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="2.143">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_note_icons="true"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="3" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Tags" FOLDED="true" POSITION="right" ID="ID_169163682" CREATED="1556879717764" MODIFIED="1556879843317">
<edge COLOR="#ff0000"/>
<node TEXT="Inline" ID="ID_1180680070" CREATED="1556879845947" MODIFIED="1556879848606">
<node TEXT="{@link com.mkz.package.class}" ID="ID_1204098359" CREATED="1556879750670" MODIFIED="1556879775953"/>
<node TEXT="{@link com.mzk.package.class#method}" ID="ID_1391469191" CREATED="1556879776439" MODIFIED="1556879803666"/>
</node>
<node TEXT="Standard" ID="ID_869467703" CREATED="1556879852508" MODIFIED="1556879855373">
<node TEXT="@author" ID="ID_491901130" CREATED="1556879727668" MODIFIED="1556879735870"/>
<node TEXT="@return" ID="ID_1241450133" CREATED="1556879913152" MODIFIED="1556879920114"/>
<node TEXT="@param" ID="ID_756902217" CREATED="1556879920608" MODIFIED="1556879924409"/>
<node TEXT="@since" ID="ID_652807566" CREATED="1556879925088" MODIFIED="1556879928290"/>
<node TEXT="@see" ID="ID_1427353314" CREATED="1556879937874" MODIFIED="1556879940411"/>
<node TEXT="@version specifies the version of the software, commonly used with %I% and %G% macros" ID="ID_941156270" CREATED="1556879969651" MODIFIED="1556879971948"/>
<node TEXT="@throws" ID="ID_488386805" CREATED="1556879978156" MODIFIED="1556879984365"/>
<node TEXT="@deprecated" ID="ID_1156888484" CREATED="1556879984868" MODIFIED="1556879993710"/>
</node>
</node>
<node TEXT="generating javadoc" POSITION="left" ID="ID_1943401460" CREATED="1556880031503" MODIFIED="1556880039745">
<edge COLOR="#0000ff"/>
<node TEXT="command" ID="ID_1127267744" CREATED="1556880043784" MODIFIED="1556880098149"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <code class="bash plain">javadoc -d doc src\*</code>
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="maven plugin" ID="ID_141500830" CREATED="1556880046648" MODIFIED="1556880071240"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <div class="container">
      <div class="line number1 index0 alt2">
        <code class="java plain">&lt;build&gt;</code>
      </div>
      <div class="line number2 index1 alt1">
        <code class="java spaces">&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;plugins&gt;</code>
      </div>
      <div class="line number3 index2 alt2">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;plugin&gt;</code>
      </div>
      <div class="line number4 index3 alt1">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;groupId&gt;org.apache.maven.plugins&lt;/groupId&gt;</code>
      </div>
      <div class="line number5 index4 alt2">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;artifactId&gt;maven-javadoc-plugin&lt;/artifactId&gt;</code>
      </div>
      <div class="line number6 index5 alt1">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;version&gt;</code><code class="java value">3.0</code><code class="java plain">.</code><code class="java value">0</code><code class="java plain">&lt;/version&gt;</code>
      </div>
      <div class="line number7 index6 alt2">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;configuration&gt;</code>
      </div>
      <div class="line number8 index7 alt1">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;source&gt;</code><code class="java value">1.8</code><code class="java plain">&lt;/source&gt;</code>
      </div>
      <div class="line number9 index8 alt2">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;target&gt;</code><code class="java value">1.8</code><code class="java plain">&lt;/target&gt;</code>
      </div>
      <div class="line number10 index9 alt1">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;/configuration&gt;</code>
      </div>
      <div class="line number11 index10 alt2">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;tags&gt;</code>
      </div>
      <div class="line number12 index11 alt1">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">...</code>
      </div>
      <div class="line number13 index12 alt2">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;/tags&gt;</code>
      </div>
      <div class="line number14 index13 alt1">
        <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;/plugin&gt;</code>
      </div>
      <div class="line number15 index14 alt2">
        <code class="java spaces">&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;/plugins&gt;</code>
      </div>
      <div class="line number16 index15 alt1">
        <code class="java plain">&lt;/build&gt;</code>
      </div>
    </div>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Custom tags" POSITION="right" ID="ID_92172897" CREATED="1556880197185" MODIFIED="1556880217860">
<edge COLOR="#00ff00"/>
<node TEXT="command line" ID="ID_1411090465" CREATED="1556880232115" MODIFIED="1556880244207"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <code class="java plain">javadoc -tag location:a:</code><code class="java string">&quot;Notable Locations:&quot;</code>&#160;<code class="java plain">-d doc src\*</code>
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="maven" ID="ID_1623658745" CREATED="1556880248196" MODIFIED="1556880276660"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <div class="line number2 index1 alt1">
      <code class="java plain">&lt;tags&gt;</code>
    </div>
    <div class="line number3 index2 alt2">
      <code class="java spaces">&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;tag&gt;</code>
    </div>
    <div class="line number4 index3 alt1">
      <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;name&gt;location&lt;/name&gt;</code>
    </div>
    <div class="line number5 index4 alt2">
      <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;placement&gt;a&lt;/placement&gt;</code>
    </div>
    <div class="line number6 index5 alt1">
      <code class="java spaces">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;head&gt;Notable Places:&lt;/head&gt;</code>
    </div>
    <div class="line number7 index6 alt2">
      <code class="java spaces">&#160;&#160;&#160;&#160;</code><code class="java plain">&lt;/tag&gt; </code>
    </div>
    <div class="line number8 index7 alt1">
      <code class="java plain">&lt;/tags&gt;</code>
    </div>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>
