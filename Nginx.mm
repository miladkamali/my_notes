<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Nginx" FOLDED="false" ID="ID_1997527639" CREATED="1552338714055" MODIFIED="1552338724472" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="3" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Enable Cores" POSITION="right" ID="ID_190053902" CREATED="1552338726648" MODIFIED="1552338766055">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      #
    </p>
    <p>
      # Wide-open CORS config for nginx
    </p>
    <p>
      #
    </p>
    <p>
      location / {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;if ($request_method = 'OPTIONS') {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Origin' '*';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# Custom headers and headers various browsers *should* be OK with but aren't
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Headers' 'DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# Tell client that this pre-flight info is valid for 20 days
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Max-Age' 1728000;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Content-Type' 'text/plain; charset=utf-8';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Content-Length' 0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 204;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;if ($request_method = 'POST') {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Origin' '*';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Headers' 'DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Expose-Headers' 'Content-Length,Content-Range';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;if ($request_method = 'GET') {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Origin' '*';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Allow-Headers' 'DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;add_header 'Access-Control-Expose-Headers' 'Content-Length,Content-Range';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Reverse Proxy" POSITION="left" ID="ID_696627166" CREATED="1552338773963" MODIFIED="1552338810426">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This server is hosted by Contabo. If you have any questions or need help,
    </p>
    <p>
      please don't hesitate to contact us at support@contabo.com.
    </p>
    <p>
      
    </p>
    <p>
      Last login: Wed Feb 27 12:28:32 2019 from 195.181.168.178
    </p>
    <p>
      root@vmi244832:~# screen -r
    </p>
    <p>
      #Please see /usr/share/doc/nginx-doc/examples/ for more detailed examples.
    </p>
    <p>
      # upstream backend.example.com {
    </p>
    <p>
      #&#160;&#160;&#160;&#160;&#160;&#160;&#160;server backend1.example.com:443;
    </p>
    <p>
      # }
    </p>
    <p>
      
    </p>
    <p>
      server {
    </p>
    <p>
      listen 80;
    </p>
    <p>
      server_name &quot;mez.com&quot;;
    </p>
    <p>
      location / {
    </p>
    <p>
      proxy_pass https://localhost:5001;
    </p>
    <p>
      proxy_http_version 1.1;
    </p>
    <p>
      proxy_ssl_verify&#160;&#160;&#160;&#160;&#160;&#160;&#160;off;
    </p>
    <p>
      proxy_set_header Upgrade $http_upgrade;
    </p>
    <p>
      proxy_set_header Connection keep-alive;
    </p>
    <p>
      #&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_set_header Host $host;
    </p>
    <p>
      proxy_cache_bypass $http_upgrade;
    </p>
    <p>
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    </p>
    <p>
      #&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_set_header X-Forwarded-Proto $scheme;
    </p>
    <p>
      if ($request_method = 'POST') {
    </p>
    <p>
      add_header 'Access-Control-Allow-Origin' '*';
    </p>
    <p>
      add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';
    </p>
    <p>
      add_header 'Access-Control-Allow-Headers' 'DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range';
    </p>
    <p>
      add_header 'Access-Control-Expose-Headers' 'Content-Length,Content-Range';
    </p>
    <p>
      }
    </p>
    <p>
      if ($request_method = 'GET') {
    </p>
    <p>
      add_header 'Access-Control-Allow-Origin' '*';
    </p>
    <p>
      add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS';
    </p>
    <p>
      add_header 'Access-Control-Allow-Headers' 'DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range';
    </p>
    <p>
      add_header 'Access-Control-Expose-Headers' 'Content-Length,Content-Range';
    </p>
    <p>
      }
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      server {
    </p>
    <p>
      listen 80;
    </p>
    <p>
      server_name &quot;mmmmmmmmez.com&quot;;
    </p>
    <p>
      location / {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_pass https://localhost:5001;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_http_version 1.1;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_ssl_verify&#160;&#160;&#160;&#160;&#160;&#160;&#160;off;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_set_header Upgrade $http_upgrade;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_set_header Connection keep-alive;
    </p>
    <p>
      #&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_set_header Host $host;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_cache_bypass $http_upgrade;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    </p>
    <p>
      #&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;proxy_set_header X-Forwarded-Proto $scheme;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<node TEXT="https://enable-cors.org/server_nginx.html" ID="ID_1301589977" CREATED="1552679536147" MODIFIED="1552679537629"/>
<node TEXT="https://serverfault.com/questions/854218/nginx-reverse-proxy-multiple-locations" ID="ID_1781564198" CREATED="1554118576096" MODIFIED="1554118577912"/>
</node>
</node>
</map>
