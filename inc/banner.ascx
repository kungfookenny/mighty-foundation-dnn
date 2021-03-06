<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Init" Src="~/Admin/AgencyRev/Base/Initilization/Initilization2.ascx" %>
<%@ Register TagPrefix="fnn" TagName="TopBar" Src="~/Admin/AgencyRev/Framework/Foundation/Components/Top-bar.ascx" %>
<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %>

<fortyfingers:STYLEHELPER RemoveCssFile="portal.css"  runat="server" />
<fortyfingers:STYLEHELPER RemoveCssFile="default.css,admin.css" IfUserMode="None" runat="server" />
<fortyfingers:STYLEHELPER RemoveJsFile="jquery-ui.js,dnn.js,dnn.controls.js,dnncore.js,dnn.modalpopup.js" IfUserMode="None" runat="server" />

<ar:Init runat='server'/>
<dnn:DnnCssInclude runat="server" FilePath="dist/css/skin.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="6" />
<dnn:DnnJsInclude runat="server" FilePath="dist/js/skin.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="4" />

<header role="banner">
<div class="header-wrap">
  <fnn:TopBar runat="server"
    RightNode="*,0,2"
    RightExcludes="Home,Admin,Revolution"
    Hover="true"
  />
</div>
</header>
