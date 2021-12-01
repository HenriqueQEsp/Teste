<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Produtos.aspx.cs" Inherits="Produtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid p-2">
        <h1>Produtos </h1>
        <div class="card-group">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="card mb-3 m-2 shadow-lg" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="Imagens/<%# Eval("Imagem") %>" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Nome") %></h5>
                                    <p class="card-text"><%# Eval("descricao") %></p>
                                    <p class="card-text"><small class="text-muted">Marca:<%# Eval("Marca") %></small></p>
                                    <p class="card-text">R$ <%# Eval("Preco","{0:N2}") %></p>
                                    <a href="detalhe_produto.aspx?produto=<%# Eval("idp") %>" class="btn btn-primary"> Comprar </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_Produtos]"></asp:SqlDataSource>
</asp:Content>


