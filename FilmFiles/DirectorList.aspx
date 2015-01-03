<%@ Page Title="Directors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DirectorList.aspx.cs" Inherits="FilmFiles.DirectorList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup>
                <h2>Directors</h2>
            </hgroup>
     <asp:ListView ID="ActorList" runat="server"  GroupItemCount="3" ItemType="FilmFiles.Models.Director" SelectMethod="GetDirectors">
       
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>

                    
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="DirectorBio.aspx?DirectorID=<%#:Item.DirectorID%>">
                                        <img src="/Images/<%#:Item.Image%>"
                                            width="135" height="200" style="border: solid" /></a>
                                    </td>
                                
                                    <td style="vertical-align: top; text-align:left;"> 
                        <a href="DirectorBio.aspx?directorID=<%#:Item.DName%>"><%#:Item.DName %></a>
                        
                        
                       
                                    
                                </td>
                            </tr>
                        </table>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
</asp:Content>
