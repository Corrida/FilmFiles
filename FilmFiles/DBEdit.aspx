<%@ Page Title="Edit,Insert & Delete" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBEdit.aspx.cs" Inherits="FilmFiles.DBEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-5">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FilmID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="231px" ShowFooter="True" Width="16px"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="FilmID" InsertVisible="False" SortExpression="FilmID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("FilmID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FilmID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ValidationGroup="INSERT" OnClick="LinkButtonInsert_Click" ID="LinkButtonInsert" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditTitle" runat="server" ErrorMessage="Title is a required field"
                        ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="InsertTitle" runat="server" ErrorMessage="Title is a required field"
                        ControlToValidate="txtTitle" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditDescription" runat="server" ErrorMessage="Description is a required field"
                        ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="InsertDescription" runat="server" ErrorMessage="Description is a required field"
                        ControlToValidate="txtDescription" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Poster" SortExpression="Poster">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Poster") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditPoster" runat="server" ErrorMessage="Poster is a required field"
                        ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Poster") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtPoster" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="InsertPoster" runat="server" ErrorMessage="Poster is a required field"
                        ControlToValidate="txtPoster" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditReleaseDate" runat="server" ErrorMessage="Release date is a required field"
                        ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtReleaseDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="InsertReleaseDate" runat="server" ErrorMessage="Release date is a required field"
                        ControlToValidate="txtReleaseDate" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BoxOffice" SortExpression="BoxOffice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("BoxOffice") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditBoxOffice" runat="server" ErrorMessage="Box Office date is a required field"
                        ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("BoxOffice") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtBoxOffice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="InsertBoxOffice" runat="server" ErrorMessage="Box Office is a required field"
                        ControlToValidate="txtBoxOffice" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GenreID" SortExpression="GenreID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("GenreID") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditGenreID" runat="server" ErrorMessage="Genre ID is a required field"
                        ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("GenreID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtGenreID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="InsertGenreID" runat="server" ErrorMessage="Genre ID is a required field"
                        ControlToValidate="txtGenreID" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ActorID" SortExpression="ActorID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ActorID") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditActorID" runat="server" ErrorMessage="Actor ID is a required field"
                        ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("ActorID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtActorID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="InsertActorID" runat="server" ErrorMessage="Actor ID is a required field"
                        ControlToValidate="txtActorID" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DirectorID" SortExpression="DirectorID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DirectorID") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EditDirectorID" runat="server" ErrorMessage="Director ID is a required field"
                        ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("DirectorID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtDirectorID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="InsertDirectorID" runat="server" ErrorMessage="Director ID is a required field"
                        ControlToValidate="txtDirectorID" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
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
            </div>
        </div>
    <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" ForeColor="Red" runat="server" />
    <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" runat="server" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FilmFiles %>" DeleteCommand="DELETE FROM [Films] WHERE [FilmID] = @FilmID" InsertCommand="INSERT INTO [Films] ([Title], [Description], [Poster], [ReleaseDate], [BoxOffice], [GenreID], [ActorID], [DirectorID]) VALUES (@Title, @Description, @Poster, @ReleaseDate, @BoxOffice, @GenreID, @ActorID, @DirectorID)" SelectCommand="SELECT * FROM [Films]" UpdateCommand="UPDATE [Films] SET [Title] = @Title, [Description] = @Description, [Poster] = @Poster, [ReleaseDate] = @ReleaseDate, [BoxOffice] = @BoxOffice, [GenreID] = @GenreID, [ActorID] = @ActorID, [DirectorID] = @DirectorID WHERE [FilmID] = @FilmID">
        <DeleteParameters>
            <asp:Parameter Name="FilmID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Poster" Type="String" />
            <asp:Parameter Name="ReleaseDate" Type="String" />
            <asp:Parameter Name="BoxOffice" Type="String" />
            <asp:Parameter Name="GenreID" Type="Int32" />
            <asp:Parameter Name="ActorID" Type="Int32" />
            <asp:Parameter Name="DirectorID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Poster" Type="String" />
            <asp:Parameter Name="ReleaseDate" Type="String" />
            <asp:Parameter Name="BoxOffice" Type="String" />
            <asp:Parameter Name="GenreID" Type="Int32" />
            <asp:Parameter Name="ActorID" Type="Int32" />
            <asp:Parameter Name="DirectorID" Type="Int32" />
            <asp:Parameter Name="FilmID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
