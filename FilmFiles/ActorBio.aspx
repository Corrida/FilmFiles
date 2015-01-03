<%@ Page Title="Actor Bio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActorBio.aspx.cs" Inherits="FilmFiles.ActorBio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:FormView ID="ActorBios" runat="server" ItemType="FilmFiles.Models.Actor" SelectMethod ="GetActor" RenderOuterTable="false"> 
        <ItemTemplate> 
            <div> 
                <h1><%#:Item.AName %></h1> 
            </div> 
            <br /> 
            <table> 
                <tr> 
                    <td> 
                        <img src="/Images/<%#:Item.Image %>" style="border:solid; height:300px" alt="<%#:Item.AName%> Image"/> 
                    </td> 
                    <td>&nbsp;</td>   
                    <td style="vertical-align: top; text-align:left;"> 
                        <b>Bio:</b><br /><%#:Item.ABio %> 
                        <br /> 
                        <b>Date of Birth:</b><br /><%#:Item.ADOB %> 
                        <br />
                        <b>Actor ID:</b><br /><%#:Item.ActorID %> 
                        <br />  
                    </td> 
                </tr> 
            </table> 
        </ItemTemplate> 
    </asp:FormView>
</asp:Content>
