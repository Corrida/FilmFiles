<%@ Page Title="Director Bio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DirectorBio.aspx.cs" Inherits="FilmFiles.DirectorBio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="DirectorBios" runat="server" ItemType="FilmFiles.Models.Director" SelectMethod ="GetDirector" RenderOuterTable="false"> 
        <ItemTemplate> 
            <div> 
                <h1><%#:Item.DName %></h1> 
            </div> 
            <br /> 
            <table> 
                <tr> 
                    <td> 
                        <img src="/Images/<%#:Item.Image %>" style="border:solid; height:300px" alt="<%#:Item.DName%> Image"/> 
                    </td> 
                    <td>&nbsp;</td>   
                    <td style="vertical-align: top; text-align:left;"> 
                        <b>Bio:</b><br /><%#:Item.DBio %> 
                        <br /> 
                        <b>Date of Birth:</b><br /><%#:Item.DDOB %> 
                        <br />
                        <b>Director ID:</b><br /><%#:Item.DirectorID %> 
                        <br /> 
                    </td> 
                </tr> 
            </table> 
        </ItemTemplate> 
    </asp:FormView>
</asp:Content>
