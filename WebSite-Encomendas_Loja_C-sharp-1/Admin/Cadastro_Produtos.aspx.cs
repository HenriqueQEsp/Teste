using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Cadastro_Produtos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (nomeprotudo.Value != "" && precoProduto.Value != "" && descricao.Value != "")
        {
            string foto = "semfoto.png";
            if (FileUpload1.HasFile)
            {
                Random r = new Random();

                foto = r.Next(1000,9999)+ 

                    DateTime.Now.Year +
                    DateTime.Now.Month +
                    DateTime.Now.Day +
                    DateTime.Now.Hour +
                    DateTime.Now.Minute +
                    DateTime.Now.Second +
                    DateTime.Now.Millisecond +
                    FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/Imagens/") + foto);

            }

            string comando = "INSERT INTO Tb_Produtos (Nome, Descricao, Marca, Preco, Estoque, Disponivel, Imagem) VALUES ('"+nomeprotudo.Value+"','"+descricao.Value+"','"+marcaProduto.Value+"',"+precoProduto.Value.Replace(",",".")+","+estoqueProduto.Value.Replace(",",".")+","+CheckBox1.Checked+",'"+foto+"')";
            SqlDataSource1.InsertCommand = comando; //definindo o comando 
            SqlDataSource1.Insert(); //executando o comando Insert
            Label1.Text = "Cadastrado com sucesso!!!";
        }
        else
        {
            Label1.Text = "Faltam dados para o cadastro!";
        }
    }
}