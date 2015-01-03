<%@ Page Title="Actors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActorList.aspx.cs" Inherits="FilmFiles.ActorList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup>
                <h2>Actors</h2>
            </hgroup>
    <asp:ListView ID="ActorLists" runat="server"  GroupItemCount="3" ItemType="FilmFiles.Models.Actor" SelectMethod="GetActors">
       
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
                                    <a href="ActorBio.aspx?ActorID=<%#:Item.ActorID%>">
                                        <img src="/Images/<%#:Item.Image%>"
                                            width="135" height="200" style="border: solid" /></a>
                                    </td>
                                
                                    <td style="vertical-align: top; text-align:left;"> 
                        <a href="ActorBio.aspx?actorID=<%#:Item.AName%>"><%#:Item.AName %></a>
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
