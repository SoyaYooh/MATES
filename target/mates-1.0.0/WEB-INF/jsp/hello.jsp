
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<head>

    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="https://ssl.gstatic.com/sites/p/b99f39/system/app/themes/notebook/standard-css-notebook-ltr-ltr.css" />
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Walter Turncoat">
    <title>Netify</title>

</head>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-97223178-1', 'auto');
    ga('send', 'pageview');

</script>
<script>
    function ajaxLogThisPage(){
        return;
        xmlhttp=new XMLHttpRequest();
        xmlhttp.open("GET","siteLogger.php?page=index",false);
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
//				document.getElementById("divSQLResponseZone").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.send();
    }
</script>
<body onload='ajaxLogThisPage()'>
<div id="sites-chrome-everything" class="">
    <div id="sites-chrome-page-wrapper" style="direction: ltr">
        <div id="sites-chrome-page-wrapper-inside">
            <div  id="sites-chrome-header-wrapper" style="">
                <table id="sites-chrome-header" class="sites-layout-hbox-centered" cellspacing="0" style="">
                    <tr class="sites-header-primary-row" id="sites-chrome-userheader">
                        <td id="sites-header-title" class="sites-header-title-centered sites-chrome-header-valign-middle" role="banner" style="height: 30px">
                            <div class="sites-header-cell-buffer-wrapper">
                                <h2>
                                    <a href="index.html" dir="ltr" id="sites-chrome-userheader-title">Mates框架</a>
                                </h2>
                            </div>
                        </td>
                    </tr>
                    <tr class="noclass">
                        <td style="text-align: center;">
                            <p style="font-size: 24px; font-family: Walter Turncoat;">欢迎使用mates框架</p>
                        </td>
                    </tr>
                    <tr class="sites-header-secondary-row" id="sites-chrome-horizontal-nav">
                        <td colspan="3" id="sites-chrome-header-horizontal-nav-container" role="navigation">
                            <div class="sites-header-nav">
                                <ul class="sites-header-nav-container-links" >
                                    <li class="current">
                                        <a class="sites-navigation-link unselected" href="index.html" style="text-align:center;">项目框架</a>
                                    </li>
                                    <li class="unselected">
                                        <a class="sites-navigation-link unselected" href="galleryElectronics.html" style="text-align:center;">Mates<br>您的伴侣</a>
                                    </li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div id="sites-chrome-main-wrapper">
            <div id="sites-chrome-main-wrapper-inside">
                <table id="sites-chrome-main" class="sites-layout-hbox" cellspacing="0" cellpadding="{scmCellpadding}" border="0">
                    <tr>

                        <td id="sites-canvas-wrapper">
                            <div style="text-align:center">
                                <br>
                                <table>
                                    <tr>
                                        <td style="width: 50%;">
                                           <%-- <img style="max-width:100%;" src="/images/fabrication.jpg" />--%>
                                        </td>
                                        <td style="width:50%;">
                                            <%--<img style="max-width:100%;" src="/images/electronics lab.jpg"/>--%>
                                        </td>
                                    </tr>

                                </table>
                            </div>
            </div>
        </div>
        <table cellspacing="0" style="padding: 10px;" class="sites-layout-hbox">
            <tbody>
            <tr>
                <td class="sites-layout-tile sites-tile-name-content-1">
                    <font style="font-size:20px; font-family: Walter Turncoat;">
                        <br><b>
                        <center>Before crossing the adoption chasm, an entrepreneur must first bridge the ProtoChasm<sup>tm</sup>...<br>
                            Netify is a venture capital investor for pre-prototype stage startups</b></center><br>
                    </font>
                </td>
            </tr>
            </tbody>
        </table>
        <div id="sites-chrome-footer" style="height:20px;">
        </div>
        </td>
        </tr>
        </tbody>
        </table>
    </div>
</div>
</div>
</div>
</body>
</html>
