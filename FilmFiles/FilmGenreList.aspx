<%@ Page Title="Genres" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FilmGenreList.aspx.cs" Inherits="FilmFiles.FilmGenreList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <div id="CategoryMenu" style="text-align: center">       
            <asp:ListView ID="categoryList"  
                ItemType="FilmFiles.Models.Genre" 
                runat="server"
                SelectMethod="GetGenres" >
                <ItemTemplate>
                    <b style="font-size: large; font-style: normal">
                        <a href="/FilmGenreList.aspx?id=<%#: Item.GenreID %>">
                        <%#: Item.GName %>
                        </a>
                    </b>
                </ItemTemplate>
                <ItemSeparatorTemplate>  |  </ItemSeparatorTemplate>
            </asp:ListView>
        </div>

            <asp:ListView ID="filmGenreList" runat="server" 
                DataKeyNames="GenreID" GroupItemCount="4"
                ItemType="FilmFiles.Models.Film" SelectMethod="GetFilms">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No films were found.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
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
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>
