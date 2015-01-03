<%@ Page Title="Film Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FilmDetails.aspx.cs" Inherits="FilmFiles.FilmDetails" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FilmDetail" runat="server" ItemType="FilmFiles.Models.Film" DataKeyNames="FilmID" SelectMethod ="GetFilm" RenderOuterTable="false"> 
<ItemTemplate> 
            <div> 
                <h1><%#:Item.Title %></h1> 
            </div> 
            <br /> 
            <table> 
                <tr> 
                    <!--comment!-->
                    <td> 
                        <img src="/Images/<%#:Item.Poster %>" style="border:solid; height:300px" alt="<%#:Item.Title %> Poster"/> 
                    </td>
                    
    <td>&nbsp;</td>   
    <td style="vertical-align: top; text-align:left;"> 
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" CssClass="Tab" >
        <asp:TabPanel runat="server" HeaderText="Basic Info" ID="TabPanel1" >
        <ContentTemplate>
                <asp:FormView ID="FilmDetail2" runat="server" ItemType="FilmFiles.Models.Film" DataKeyNames="FilmID" SelectMethod ="GetFilm" RenderOuterTable="false"> 

            <ItemTemplate> 
            <b>Description:</b><br /><%#:Item.Description %> 
                        <br /> 
                        <b>Directed By:</b><br /><a href="DirectorBio.aspx?directorID=<%#:Item.DirectorID%>"><%#:Item.DirectorID %></a>
                        <br /> 
                        <b>Cast:</b><br /><a href="ActorBio.aspx?actorID=<%#:Item.ActorID%>"><%#:Item.ActorID %></a> 
                        <br /> 
                        <span><b>Initial Release Date:</b><br /><%#: Item.ReleaseDate %></span> 
                        <br /> 
                        <span><b>Worldwide Box Office:</b><br /><%#: Item.BoxOffice %></span> 
                        <br />
                </ItemTemplate>
                    </asp:FormView> 
        </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="Cast & Crew" ID="TabPanel2">
        <ContentTemplate>
            <p>Cast of the movie</p>
        </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Qutes" >
        <ContentTemplate>
            <p>Famous qoutes from the movie</p>
        </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="Financial" >
        <ContentTemplate>
            <p>Budget of the movie and what it has grossed in seperate countiries and worldwide total</p>
        </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="Videos" >
        <ContentTemplate>
            <p>Promotional videos such as trailers, featurettes etc.</p>
        </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
        </td> 
                </tr> 
            </table> 
        </ItemTemplate> 
    </asp:FormView>

</asp:Content>
