<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Weatherap.aspx.cs" Inherits="WeatherApp.Weatherap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="..//CSS/weather.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .WaterMarkedTextBox
        {
            border-right: #ccccff thin solid;
            border-top: #ccccff thin solid;
            border-left: #ccccff thin solid;
            border-bottom: #ccccff thin solid;
            color: gray;
            display: inline;
            background: AliceBlue;
            visibility: visible;
        }
        .NormalTextBox
        {
            border-right: #ccccff thin solid;
            border-top: #ccccff thin solid;
            border-left: #ccccff thin solid;
            border-bottom: #ccccff thin solid;
            color: black;
            display: inline;
            background: #ffffff;
            visibility: visible;
        }
        .boxed
        {
            border: 1px solid green;
            border-bottom :
        }
    </style>
    <script language="javascript" type="text/javascript">
        function clearwatermark(defaulttext, textboxcontrol) {
            if (textboxcontrol.value == defaulttext) {
                textboxcontrol.value = "";
                textboxcontrol.style.color = "black";
            }
        }
        function createwatermark(defaulttext, textboxcontrol) {
            if (textboxcontrol.value.length == 0) {
                textboxcontrol.value = defaulttext;
                textboxcontrol.style.color = "gray";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="font-family: Georgia; font-size: 30px; color: Navy;">
                    Weather Information
                </td>
            </tr>
        </table>
        <table>
            <tr style="text-indent: 3em;">
                <p>
                </p>
                <td>
                    <asp:TextBox ID="txtCity" Text="Please Enter City Name" Onblur="createwatermark('Please Enter City Name',this);"
                        Onfocus="clearwatermark('Please Enter City Name',this);" runat="server" />
                    <asp:Button ID="Button1" Text="Click Here" runat="server" OnClick="GetWeatherInfo" />
                </td>
            </tr>
        </table>
    </div>
    <p>
    </p>
    <div style="margin-left:8em;">
        <table id="tblWeather" style="border-spacing: 10px;" class="boxed" runat="server"
            border="0" cellpadding="0" cellspacing="0" visible="false">
            <tr>
                <td rowspan="3">
                    <div>
                        <asp:Image ID="imgWeatherIcon" Style="height: 82px; width: 82px;" runat="server" /></div>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="font-size: 20px; font-family: Sans-Serif;">
                        <tr>
                            <td>
                                <asp:Label ID="lblCity_Country" runat="server" /><asp:Image ID="imgCountryFlag" Style="height: 15px;
                                    width: 15px;" runat="server" />
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="lblDescription" Style="font-size: 16px; font-family: Sans-Serif;"
                        runat="server" />
                    Humidity:
                    <asp:Label ID="lblHumidity" Style="font-size: 16px; font-family: Sans-Serif;" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Temperature: (Min:
                    <asp:Label ID="lblTempMin" Style="height: 17px; width: 17px;" runat="server" />
                    Max:
                    <asp:Label ID="lblTempMax" Style="height: 17px; width: 17px;" runat="server" />
                    Day:
                    <asp:Label ID="lblTempDay" Style="height: 17px; width: 17px;" runat="server" />
                    Night:
                    <asp:Label ID="lblTempNight" Style="height: 17px; width: 17px;" runat="server" />)
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
