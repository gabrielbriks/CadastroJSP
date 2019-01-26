
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>

<%

	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/cadastro?user=root");
	
	String acao = request.getParameter("acao");

	if(acao == null){
		acao = "listaPessoas";
		
	}


%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>


	<style>
		body{
		margin:0;
		background: #cce6ff;
		}
		.container {
		width: 100vw;
		height: 100vh;
		
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center
10     }
		
		fieldset{
		width: 600px;
13     	height: 400px;
		}
		
		table{
		width: 597px;
13     	height: 350px;
		}		
	</style>
</head>
<body>
 <div class="container">
 	
	<form action="#" method="post">
		
		<%
		if(acao.equals("Cadastrar")){
			
			String pess_nome = request.getParameter("pess_nome");
			String vale_valor = request.getParameter("vale_valor");
			
			if(!pess_nome.equals("") && !vale_valor.equals("")){
				String sql = "INSERT INTO pessoas(pess_nome,vale_valor) VALUES (?,?)";
				PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
				
				stmt.setString(1, pess_nome);
				stmt.setString(2, vale_valor);
				
				stmt.execute();
				
				out.println("<b> " +pess_nome+ " ESTÁ REGISTRADA </b>");
				
				acao = "listaPessoas";
				
				
			}else{
				acao="novoCadastro";				
				out.println("<b> TODOS OS CAMPOS DEVEM, SER PREENCHIDO</b>");
				
				
			}
			
		}	
			
		
			
		if(acao.equals("novoCadastro")){	
		%>
		
	
			<br><br><br><br><br><br>
			<fieldset>
				<label>Nome
				<input type="text" name="pess_nome">
				</label><br>
				<label>Valor do Vale
					<input type="text" name="vale_valor">
				</label><br>
				
				<button type="submit" name="acao" value="listaPessoas"> Voltar </button>
				<button type="submit" name="acao" value="Cadastrar">Salvar</button>
				
			</fieldset>
		
		
		
		<% }else if(acao.equals("listaPessoas")){ %>
		
		<h1>Registros</h1>
		<fieldset>
			<button type="submit" name="acao" value="novoCadastro"> Novo Cadastro </button>
			
			
			<br><br><br><br>
			
		
		
		
			<table border="1">
			
				<thead>
					<th>Codigo</th>
					<th>Nome</th>
					<th>Data do Cadastro</th>
					<th>Valor do Vale</th>
				</thead>
				<tbody>
										
					<%
					Statement s = conn.createStatement();
					ResultSet res = s.executeQuery("SELECT * FROM pessoas");
					
					while(res.next()){
						
						out.println("<tr>");
							out.println("<td>"+res.getString("pess_codi" )+"</td>");
							out.println("<td>"+res.getString("pess_nome" )+"</td>");
							out.println("<td>"+res.getString("dta_cadastro" )+"</td>"); 
							out.println("<td>"+res.getString("vale_valor" )+"</td>");
						out.println("</tr>");
						
						
					}
					
					conn.close();
					%>
					
				</tbody>
			
			</table>
		
		</fieldset>
		
		<%} %>
	 </form>
	</div>
	
	
	
</body>
</html>