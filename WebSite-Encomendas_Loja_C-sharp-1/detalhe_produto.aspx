<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detalhe_produto.aspx.cs" Inherits="detalhe_produto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Idp" DataSourceID="SqlDataSource1">

            <ItemTemplate>


                <!-- Portfolio Item Heading -->
                <h1 class="my-4"><%# Eval("Nome") %>
                    <small>Detalhes do Produto</small>
                </h1>

                <!-- Portfolio Item Row -->
                <div class="row">

                    <div class="col-md-8">
                        <img class="img-fluid" src="Imagens/<%# Eval("Imagem") %>" alt="<%# Eval("Nome") %>" style="min-width:70%;">
                    </div>

                    <div class="col-md-4">
                        <h3 class="my-3"><%# Eval("Nome") %></h3>
                        <p><%# Eval("Descricao") %></p>
                        <h3 class="my-3">Mais detalhes</h3>
                        <ul>
                            <li>Marca: <%# Eval("Marca") %></li>
                            <hr />
                            <li>Preço R$ <%# Eval("Preco","{0:N2}") %></li>
                        </ul>
                    </div>

                </div>
                <!-- /.row -->

                <!-- Related Projects Row -->
                <h3 class="my-4">Comprar</h3>

                <div class="row">

                    <div class="col-md-3 col-sm-6 mb-2">
                        <div class="container-fluid">

                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 mb-2">
                        
                    </div>

                    
                </div>
                <!-- /.row -->



            </ItemTemplate>
        </asp:FormView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_Produtos] WHERE ([Idp] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="produto" Name="Idp" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


