<%@ Page Title="Film List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FilmList.aspx.cs" Inherits="FilmFiles.FilmList" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup>
       <h2>Films</h2>
            </hgroup>
    <asp:ListView ID="filmList" runat="server"  GroupItemCount="4" ItemType="FilmFiles.Models.Film" SelectMethod="GetFilms">
       
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                               <!--comment!-->
                                <td>
                                    <a href="FilmDetails.aspx?filmID=<%#:Item.FilmID%>">
                                        <img src="/Images/<%#:Item.Poster%>"
                                            width="258" height="350" style="border: solid" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="FilmDetails.aspx?filmID=<%#:Item.FilmID%>">
                                        <span class="Title" >
                                            <%#:Item.Title%>
                                        </span>
                                    </a>
                                    <br />
       
                                      <span>
                                        <b>Initial Release Date: </b><%#Item.ReleaseDate%>
                                    </span>
                                    <br />
                                    

                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
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
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/DBEdit" Text="Edit,Insert & Delete" />
                </LayoutTemplate>
            </asp:ListView>
</asp:Content>
