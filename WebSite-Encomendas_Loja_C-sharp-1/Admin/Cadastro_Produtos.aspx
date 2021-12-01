<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Cadastro_Produtos.aspx.cs" Inherits="Admin_Cadastro_Produtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container text-center" style="max-width: 800px;">
        <h1>Cadastro de Produtos</h1>
        <div class="input-group mb-3">
            <span class="input-group-text">Nome produto</span>
            <input type="text" class="form-control" id="nomeprotudo" runat="server" aria-describedby="basic-addon3">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Descrição do produto</span>
            <textarea class="form-control" aria-label="With textarea" runat="server" id="descricao"></textarea>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Marca do produto</span>
            <input type="text" class="form-control" id="marcaProduto" runat="server" aria-describedby="basic-addon3">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Estoque produto</span>
            <input type="text" class="form-control" id="estoqueProduto" runat="server" aria-describedby="basic-addon3">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Preço produto</span>
            <input type="text" class="form-control" id="precoProduto" runat="server" aria-describedby="basic-addon3">
        </div>
        <div class="input-group mb-3">
            <label class="input-group-text" for="inputGroupFile01">Foto do produto</label>
            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
        </div>
        <div class="input-group mb-3">
            <div class="input-group-text">
                <asp:CheckBox ID="CheckBox1" runat="server" class="form-check-input " />
            </div>
            Disponível em estoque.
        </div>
        <asp:Button ID="Button1" runat="server" Text="Cadastrar" CssClass="btn btn-primary" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br />
    </div>
    <div class="container-fluid text-center">
        <h1>Lista de Produtos Cadastrados</h1>
        <asp:GridView width="100%" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Idp" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            <Columns>
                <asp:CommandField ShowEditButton="True"></asp:CommandField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton OnClientClick="runat confirm('Confirma a exclusão?')" runat="server" Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="Idp" HeaderText="Idp" ReadOnly="True" InsertVisible="False" SortExpression="Idp"></asp:BoundField>
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome"></asp:BoundField>
                <asp:BoundField DataField="Preco" HeaderText="Preco" SortExpression="Preco"></asp:BoundField>
                <asp:BoundField DataField="Estoque" HeaderText="Estoque" SortExpression="Estoque"></asp:BoundField>
                <asp:CheckBoxField DataField="Disponivel" HeaderText="Disponivel" SortExpression="Disponivel"></asp:CheckBoxField>
                <asp:BoundField DataField="Imagem" HeaderText="Imagem" SortExpression="Imagem"></asp:BoundField>
                <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao"></asp:BoundField>
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca"></asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#E3EAEB"></RowStyle>

            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_Produtos]" DeleteCommand="DELETE FROM [Tb_Produtos] WHERE [Idp] = ?" InsertCommand="INSERT INTO [Tb_Produtos] ([Idp], [Nome], [Preco], [Estoque], [Disponivel], [Imagem], [Descricao], [Marca]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Tb_Produtos] SET [Nome] = ?, [Preco] = ?, [Estoque] = ?, [Disponivel] = ?, [Imagem] = ?, [Descricao] = ?, [Marca] = ? WHERE [Idp] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Idp" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Idp" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Nome" Type="String"></asp:Parameter>
            <asp:Parameter Name="Preco" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Estoque" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Disponivel" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Imagem" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descricao" Type="String"></asp:Parameter>
            <asp:Parameter Name="Marca" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String"></asp:Parameter>
            <asp:Parameter Name="Preco" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Estoque" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Disponivel" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Imagem" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descricao" Type="String"></asp:Parameter>
            <asp:Parameter Name="Marca" Type="String"></asp:Parameter>
            <asp:Parameter Name="Idp" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

