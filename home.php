<?php
  $page_title = 'Home Page';
  require_once('includes/load.php');
  if (!$session->isUserLoggedIn(true)) { redirect('index.php', false);}
   $user = find_by_id('users',(int)$_SESSION['user_id']);
   $status = find_by_id('user_groups',(int)$user['user_level']);
   $c_satker     = count_by_id('satker');
   $c_SPM       = count_by_id('pengajuan');
   $c_sptjb          = count_by_id('detail_pengajuan');
   $c_user          = count_by_id('users');
   $spm_proses   = spm_proses($user['id_satker']);
   $spm_belom_diproses   = spm_blm_proses($user['id_satker']);
   $pj= find_count_statusVerif_tahun('upload_pertanggungjawaban','',$user['id_satker'],$user['tahun']); 
   $realisasi_bpp = find_realisasi_bpp($user['id_satker'],$user['tahun']);
   $kekurangan_verif = kekurangan_blm_proses_all();
   $kekurangan_bpp= kekurangan_blm_proses($user['id_satker']);

   if($_GET['status']=='done'){
    $id = remove_junk($db->escape($_GET['id']));  
    $query  = "UPDATE kekurangan_verif SET";
    $query .=" status_done =1 WHERE id='{$id}'";
    
    if($db->query($query)){
      $session->msg('s',"Status Update ");
       redirect('home.php', false);
     }else{
      redirect('home.php', false);
    }
  }

  if(isset($_POST['update_kekurangan'])){
    $keterangan = remove_junk($db->escape($_POST['keterangan']));
    $id_pengajuan = remove_junk($db->escape($_POST['id_pengajuan'])); 
    $query  = "INSERT INTO kekurangan_verif (";
    $query .=" keterangan,id_pengajuan";
    $query .=") VALUES (";
    $query .=" '{$keterangan}','{$id_pengajuan}'";
    $query .=")";
   // echo $query; die;
    if($db->query($query)){
      $session->msg('s',"Status Update ");
       redirect('home.php', false);
     }else{
      redirect('home.php', false);
    }
  }

   if($_GET['status']=='send'){
  
     $id = remove_junk($db->escape($_GET['id']));
     $pengajuan = find_by_id('pengajuan',$id);
     $idp = $pengajuan['id'];

     if($user['user_level'] == 2){
     $query  = "UPDATE kekurangan_verif SET";
     $query .=" status_p ={$_SESSION['user_id']} WHERE id={$id}";
     //echo $query;die;
     }else{
      $query  = "UPDATE kekurangan_verif SET";
      $query .=" status_p =0 WHERE id={$id}";
     // echo $query;die;
     }
   
     if($db->query($query)){
       $session->msg('s',"Status Update ");
       if($user['user_level']==2){
        redirect('home.php', false);
      }else{
       redirect('home.php', false);
     }
   } else {
     $session->msg('d',' Sorry failed to added!');
     if($user['user_level']==2){
      redirect('home.php', false);
    }else{
     redirect('home.php', false);
   }
   }
   }
   //var_dump($kekurangan_bpp);exit();

?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
 <div class="col-md-12">
    <div class="panel">-
      <div class="jumbotron text-center">
         <h1>Selamat Datang <?php echo $user['name'];?></h1>
         <p>Status Anda Sebagai <?php echo $status['group_name'];?></p>
      </div>
    </div>
 </div>
 
   <div class="col-md-6">
  
   </div>
</div>
  <div class="row">
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-green">
          <i class="glyphicon glyphicon-user"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"> <?php echo $spm_belom_diproses[0]['total_spm'];?>  </h2>
          <p class="text-muted">SPM Belom di Cair</p>
        </div>
       </div>
    </div>
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-red">
          <i class="glyphicon glyphicon-list"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"><?php echo $spm_proses[0]['total_spm'];?> </h2>
          <p class="text-muted">SPM Cair</p>
        </div>
       </div>
    </div>
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-blue">
          <i class="glyphicon glyphicon-shopping-cart"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"><?php echo $pj[0]['jml'];?> </h2>
          <p class="text-muted">Pertanggungjawaban Belom di Upload</p>
        </div>
       </div>
    </div>
    <!-- <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-yellow">
          <i class="glyphicon glyphicon-usd"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"><?php echo rupiah($realisasi_bpp[0]['total']);?></h2>
          <p class="text-muted">Realisasi</p>
        </div>
       </div>
    </div> -->
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-red">
          <i class="glyphicon glyphicon-list"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"><a href="spp_bc.php"><?php echo $kekurangan_verif[0]['total_kurang'];?></a></h2>
          <p class="text-muted">Pengajuan yg belom Selesai</p>
        </div>
       </div>
    </div>
    <div class="col-md-3">
       <div class="panel panel-box clearfix">
         <div class="panel-icon pull-left bg-red">
          <i class="glyphicon glyphicon-list"></i>
        </div>
        <div class="panel-value pull-right">
          <h2 class="margin-top"><a href="spp_bpp.php"><?php echo $kekurangan_bpp[0][1]; //var_dump($kekurangan_bpp);?></a></h2>
          <p class="text-muted">Pengajuan yg belom Selesai BPP</p>
        </div>
       </div>
    </div>
</div>
  <div class="row">
   <div class="col-md-12">
      <div class="panel">
        <div class="jumbotron text-center">
          <div class="panel-body" style="width:100%">
          <table id="tabel" class="table table-bordered table-striped" style="width:100%">
            <thead>
              <tr>
                <th class="text-center" style="width: 50px;">#</th>
                <th class="text-center" style="width: 15%;"> SPM </th>
                <th class="text-center" style="width: 15%;"> Kekurangan</th>
                <th class="text-center" style="width: 15%;"> Verifikator </th>
                <th class="text-center" style="width: 15%;"> Satker </th>
                <th class="text-center" style="width: 15%;"> Status </th>  
                <th class="text-center" style="width: 15%;"> Aksi </th>
             </tr>
            </thead>
           <tbody>

             <?php
            // var_dump($user['user_level']); die;
             if($user['user_level'] == 6 or $user['user_level'] == 8){
             $sales=kekuranganVerif($user['id_satker']);
             }
             if($user['user_level'] == 2){
               $sales = kekuranganVerifV();
             }
              $tot=0;
              $tot1=0;
              $tot2=0;
             
             foreach ($sales as $sale):?>
             <tr>
               <td class="text-center"><?php echo count_id();?></td>
               <td class="text-center"><?php echo $sale['SPM']; ?></td>
               <td class="text-center"><?php echo $sale['keterangan']; ?></td>
               <td class="text-center"><?php $u=find_by_id('users',$sale['status_verifikasi']); echo $u['name'];  ?>
              </td>
               <td class="text-center"><?php $s=find_by_id('satker',$sale['id_satker']); echo $s['keterangan']; ?>
              </td>
              <td class="text-center"><?php if($sale['status']==1){
                echo "<span class='btn-success' >Diterima dengan syarat</span>";
              }else if($sale['status']==2){
                  echo "<span class='btn-danger' >Ditolak</span>";
                }
              ?></td>
               <td class="text-center">             
                  <a href="home.php?status=send&id=<?=$sale['id']?>" class="btn btn-success">Send</a>
                  <?php if($user['user_level'] == 2){?>
                    <a href="home.php?status=done&id=<?=$sale['id']?>" class="btn btn-success">Done</a>
                    <a href="#" class="btn btn-primary" id="kekurangan"  data-toggle="modal" data-target="#PenolakanKPPN" data-id="<?=$sale['id_pengajuan'];?>" data-verifikasi='<?=$sale['keterangan_verifikasi'];?>'>Tambah</a>
                    <?php } ?>
                    
                    <?php  if($sale['upload_kekurangan'] != ''){ ?>
                     <a class="btn btn-success" href="uploads/kekurangan/<?=$sale['upload_kekurangan'];?>" target="_BLANK" title="Preview"><i class="glyphicon glyphicon-search"></i></a><a href="batal_uploadPj.php?id=<?=$sale['id_pengajuan']?>&status=H_kurang" class="btn btn-danger" title="Hapus">
                       <span class="glyphicon glyphicon-trash"></span></a>
                   <?php }else{?>
                    <a class="btn btn-primary" href="media_kekurangan.php?id=<?=$sale['id_pengajuan']?>&status=U_kurang" title="Upload"><i class="glyphicon glyphicon-upload"></i></a>
                    <?php } ?>
               </td>
             </tr>

             <?php endforeach;?>
           </tbody>
           <tfoot>   
            <tr>
                <th class="text-center">Jumlah</th>
                <th class="text-center">  </th>
                <th class="text-center"> </th>
                <th class="text-center">  </th> 
                <th class="text-center">  </th>
                <th class="text-center">  </th>
                <th class="text-center">  </th>
             </tr>
           </tfoot>
             
         </table>
        </div>

        </div>
      </div>
   </div>
  </div>
  

 
 </div>


</div>


<?php include_once('layouts/footer.php'); ?>



<script type="text/javascript">
  // $(document).ready(function() {
	// 	$('#Body_dp').load('notif.php');
  //       $('#Detail_Nodin').modal('show');
    
  //   });
</script>

     <!-- Modal Detail Pengajuan-->
<div class="modal fade" id="Detail_Nodin" tabindex="-1" role="dialog" aria-labelledby="nodin" aria-hidden="true">
  <div class="modal-dialog modal-xl" style="width:50vw">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Pemberitahuan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div id="Body_dp" style="width:100%;">
      
    </div>
    </div>
  </div>
</div>


  <!-- Modal Edit verifikasi-->
  <div class="modal fade" id="PenolakanKPPN" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Kekurangan Verifikasi </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="home.php" method="POST">
      <div class="modal-body">
       <div class="form-group">
        <label for="exampleInputEmail1">Masukkan Kekurangan</label>
        <textarea name="keterangan" style="width:500px; height:200px;"></textarea>
       </div>
       <input type="hidden" class="form-control" id="id" name="id_pengajuan" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-primary" name="update_kekurangan" value="Save">
      </div>
      </form>
    </div>
  </div>
</div>



