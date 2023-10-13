<?php
	$idPost = addslashes($explode['1']);
	$query = $con->prepare("SELECT * FROM posts WHERE id = ?");
	$query->bind_param("s", $idPost);
	$query->execute();
	$get = $query->get_result();
	$total = $get->num_rows;

	if($total <= 0){
		echo "<div class='alert alert-danger'>Nenhuma publicação encontrada!</div>";
	}else{
		while($dados = $get->fetch_array()){
		$idPostador = $dados['id_postador'];
		$query = $con->prepare("SELECT * FROM usuarios WHERE id = ?");
		$query->bind_param("s", $idPostador);
		$query->execute();
		$dadosU = $query->get_result()->fetch_assoc();
		atualizaVisitas($con, $dados['id'],  $dados['visitas']);
?>

<div class="content">
    <div class="row">
      <div class="col-sm-3" id="menu-principal">
        <ul>
          <li class="title"><a href="http://localhost/postagem/admin/inicio">Voltar</a></li>
       </ul>
      </div>
   
    </div>
  </div>

<div id="fullpost-content">
	<h4><?php echo $dados['titulo'];?></h4>
	<img class="mr-3 img-fluid" src="<?php echo $dados['imagem'];?>" class>
	<div class="body">
		<?php echo $dados['postagem'];?>
		<hr>
		<span class="text-muted small"><i class="fas fa-user"></i> <?php echo $dadosU['nome'];?> - <i class="far fa-clock"></i> <?php echo $dados['data'];?>  - <i class='fas fa-eye'></i> <?php echo $dados['visitas'];?> - <i class='fas fa-thumbs-up' onclick="location.href='curtir/<?php echo $dados['id'];?>/<?php echo $dados['curtidas'];?>'"></i> <?php echo $dados['curtidas'];?></span>
	</div>
</div>


<?php }}?>