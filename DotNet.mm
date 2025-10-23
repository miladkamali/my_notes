<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="DotNet" FOLDED="false" ID="ID_1801875268" CREATED="1552338326968" MODIFIED="1552338332265" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="6" RULE="ON_BRANCH_CREATION"/>
<node TEXT="EntityFramework Core" POSITION="right" ID="ID_647946608" CREATED="1552338338320" MODIFIED="1552338347225">
<edge COLOR="#ff0000"/>
</node>
<node TEXT="console" POSITION="left" ID="ID_780834415" CREATED="1552338383018" MODIFIED="1552338387459">
<edge COLOR="#00ff00"/>
<node TEXT="publish" ID="ID_1749240686" CREATED="1552338389666" MODIFIED="1552338420837">
<node TEXT="dotnet publish --configuration Release" ID="ID_1915280501" CREATED="1552338399211" MODIFIED="1552338407124"/>
<node TEXT="dotnet publish --configuration Debug" ID="ID_1602260606" CREATED="1552338423845" MODIFIED="1552338430222"/>
</node>
<node TEXT="entity FrameWork" ID="ID_1626082810" CREATED="1552338447662" MODIFIED="1552338457783">
<node TEXT="Add migration" ID="ID_920481211" CREATED="1552338459758" MODIFIED="1552338464736">
<node TEXT="dotnet ef migrations add updateArticle" ID="ID_1293860800" CREATED="1552338466624" MODIFIED="1552338479784"/>
</node>
<node TEXT="update database" ID="ID_168622821" CREATED="1552338487297" MODIFIED="1552338492026">
<node TEXT="dotnet ef database update" ID="ID_1941305481" CREATED="1552338493681" MODIFIED="1552338507755"/>
</node>
</node>
<node TEXT="https://docs.microsoft.com/en-us/ef/core/get-started/aspnetcore/new-db?tabs=netcore-cli" ID="ID_263409134" CREATED="1553121545367" MODIFIED="1553121547637"/>
</node>
<node TEXT="upload files" FOLDED="true" POSITION="right" ID="ID_1355426312" CREATED="1553504334840" MODIFIED="1553504343347">
<edge COLOR="#00ffff"/>
<node TEXT="https://docs.microsoft.com/en-us/aspnet/core/mvc/models/file-uploads?view=aspnetcore-2.2" ID="ID_1663289723" CREATED="1553504346659" MODIFIED="1553504348576"/>
<node TEXT="https://www.c-sharpcorner.com/article/upload-download-files-in-asp-net-core-2-0/" ID="ID_1572745121" CREATED="1553504371355" MODIFIED="1553504372773"/>
<node TEXT="https://blog.dotnetframework.org/2016/06/07/upload-ftp-using-javascript-only/" ID="ID_107737048" CREATED="1553505111625" MODIFIED="1553505113930"/>
</node>
<node TEXT="dotnet core 3" FOLDED="true" POSITION="right" ID="ID_1097323094" CREATED="1553506683650" MODIFIED="1553506694228">
<edge COLOR="#7c0000"/>
<node TEXT="https://www.youtube.com/watch?v=upVQEUc_KwU" ID="ID_442177218" CREATED="1553506698190" MODIFIED="1553506707667"/>
</node>
</node>
</map>
