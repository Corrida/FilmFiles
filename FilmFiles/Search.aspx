<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="FilmFiles.Search" %>
<!DOCTYPE HTML> 
<html  xmlns="http://www.w3.org/1999/xhtml"> 
    <head runat="server"> 
        <title>Search Film</title> 

    </head> 
    <body> 
        <form id ="form1" runat="server">
             

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FilmID" DataSourceID="SqlDataSource1" EmptyDataText="There are no film records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    
                    <asp:HyperLinkField
    DataNavigateUrlFields="FilmID"
    DataNavigateUrlFormatString="FilmDetails.aspx?filmID={0}"
    DataTextField="Title"
    HeaderText="Title"
    SortExpression="Title" />
                    <asp:HyperLinkField
    DataNavigateUrlFields="FilmID"
    DataNavigateUrlFormatString="FilmDetails.aspx?filmID={0}"
    DataTextField="Poster"
    HeaderText="Poster"
    SortExpression="Poster" />
               
                    <asp:BoundField DataField="ReleaseDate" HeaderText="Release Date" SortExpression="ReleaseDate" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#E60000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#E60000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FilmFiles %>" DeleteCommand="DELETE FROM [Films] WHERE [FilmID] = @FilmID" InsertCommand="INSERT INTO [Films] ([Title], [Description], [Poster], [ReleaseDate]) VALUES (@Title, @Description, @Poster, @ReleaseDate)" SelectCommand="SELECT [FilmID], [Title], [Description], [Poster], [ReleaseDate] FROM [Films] WHERE ([Title] LIKE '%' + @Title + '%')" UpdateCommand="UPDATE [Films] SET [Title] = @Title, [Description] = @Description, [Poster] = @Poster, [ReleaseDate] = @ReleaseDate WHERE [FilmID] = @FilmID">
                <DeleteParameters>
                    <asp:Parameter Name="FilmID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Poster" Type="String" />
                    <asp:Parameter Name="ReleaseDate" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Title" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Poster" Type="String" />
                    <asp:Parameter Name="ReleaseDate" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    
                    <asp:Parameter Name="FilmID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
             

        </form> 

    </body>

</html>