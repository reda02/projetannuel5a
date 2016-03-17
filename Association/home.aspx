﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Association.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title> 
    <link rel="stylesheet" href="Content/bootstrap.min.css"  />
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css"   /> 

    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script> 
 
    <style>
.dropdown-submenu{position:relative;}
.dropdown-submenu>.dropdown-menu{top:0;left:100%;margin-top:-6px;margin-left:-1px;-webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;}
.dropdown-submenu:hover>.dropdown-menu{display:block;}
.dropdown-submenu>a:after{display:block;content:" ";float:right;width:0;height:0;border-color:transparent;border-style:solid;border-width:5px 0 5px 5px;border-left-color:#cccccc;margin-top:5px;margin-right:-10px;}
.dropdown-submenu:hover>a:after{border-left-color:#ffffff;}
.dropdown-submenu.pull-left{float:none;}.dropdown-submenu.pull-left>.dropdown-menu{left:-100%;margin-left:10px;-webkit-border-radius:6px 0 6px 6px;-moz-border-radius:6px 0 6px 6px;border-radius:6px 0 6px 6px;}
</style>
 
</head>
<body style="width: 489px; margin-bottom: 7px" runat="server">

<nav class="navbar navbar-default" role="navigation">
  <div class="collapse navbar-collapse" id="oNavigation">
    <ul class="nav navbar-nav">
      <li><a href="#">Accueil</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Section A <b class="caret"></b> </a>
        <ul class="dropdown-menu">
          <li><a href="#">Deuxième niveau</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Gestion des Adherents<b class="caret"></b> </a>
        <ul class="dropdown-menu">
          <li class="dropdown-submenu">
               <a tabindex="-1" href="#">Adherent</a>
              <ul class="dropdown-menu">
              <li><a href="Gestion des Adhérents/listAdh.aspx">liste de tous les adherents</a></li>
              </ul>              
          </li>
          <li class="dropdown-submenu">
            <a tabindex="-1" href="#">Sous-section</a>
            <ul class="dropdown-menu">
              <li><a href="#">Troisième niveau</a></li>
              <li><a href="#">Troisième niveau</a></li>
              <li class="dropdown-submenu">
                <a href="#">Sous-section</a>
                <ul class="dropdown-menu">
                  <li><a href="#">Quatrième niveau</a></li>
                  <li class="dropdown-submenu">
                    <a href="#">Sous-section</a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Cinquième niveau</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="#">Deuxième niveau</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>

</body>
</html>