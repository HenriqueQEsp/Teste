<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Cadastro_Usuarios.aspx.cs" Inherits="Admin_Cadastro_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid text-center">
        <h1>Clientes Cadastros</h1>
        <asp:GridView width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Idu" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            <Columns>
                <asp:CommandField ShowEditButton="True"></asp:CommandField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton OnClienteClick="return confirm('Confirma a exclusão?')" runat="server" Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="Idu" HeaderText="Idu" ReadOnly="True" InsertVisible="False" SortExpression="Idu"></asp:BoundField>
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome"></asp:BoundField>
                <asp:BoundField DataField="Cpf" HeaderText="Cpf" SortExpression="Cpf"></asp:BoundField>
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco"></asp:BoundField>
                <asp:BoundField DataField="Bairro" HeaderText="Bairro" SortExpression="Bairro"></asp:BoundField>
                <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade"></asp:BoundField>
                <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto"></asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                <asp:BoundField DataField="Esqueceu_senha" HeaderText="Esqueceu_senha" SortExpression="Esqueceu_senha"></asp:BoundField>
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo"></asp:BoundField>
                <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip"></asp:BoundField>
                <asp:BoundField DataField="data_cadastro" HeaderText="data_cadastro" SortExpression="data_cadastro"></asp:BoundField>
                <asp:BoundField DataField="senha" HeaderText="senha" SortExpression="senha"></asp:BoundField>
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

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Tb_usuarios] WHERE [Idu] = ?" InsertCommand="INSERT INTO [Tb_usuarios] ([Idu], [Nome], [Cpf], [Endereco], [Bairro], [Cidade], [Foto], [email], [Esqueceu_senha], [tipo], [ip], [data_cadastro], [senha]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_usuarios]" UpdateCommand="UPDATE [Tb_usuarios] SET [Nome] = ?, [Cpf] = ?, [Endereco] = ?, [Bairro] = ?, [Cidade] = ?, [Foto] = ?, [email] = ?, [Esqueceu_senha] = ?, [tipo] = ?, [ip] = ?, [data_cadastro] = ?, [senha] = ? WHERE [Idu] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Idu" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Idu" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Nome" Type="String"></asp:Parameter>
            <asp:Parameter Name="Cpf" Type="String"></asp:Parameter>
            <asp:Parameter Name="Endereco" Type="String"></asp:Parameter>
            <asp:Parameter Name="Bairro" Type="String"></asp:Parameter>
            <asp:Parameter Name="Cidade" Type="String"></asp:Parameter>
            <asp:Parameter Name="Foto" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Esqueceu_senha" Type="String"></asp:Parameter>
            <asp:Parameter Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter Name="ip" Type="String"></asp:Parameter>
            <asp:Parameter Name="data_cadastro" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="senha" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String"></asp:Parameter>
            <asp:Parameter Name="Cpf" Type="String"></asp:Parameter>
            <asp:Parameter Name="Endereco" Type="String"></asp:Parameter>
            <asp:Parameter Name="Bairro" Type="String"></asp:Parameter>
            <asp:Parameter Name="Cidade" Type="String"></asp:Parameter>
            <asp:Parameter Name="Foto" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Esqueceu_senha" Type="String"></asp:Parameter>
            <asp:Parameter Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter Name="ip" Type="String"></asp:Parameter>
            <asp:Parameter Name="data_cadastro" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="senha" Type="String"></asp:Parameter>
            <asp:Parameter Name="Idu" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

