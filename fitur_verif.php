<?php
$page_title = 'Verif';
require_once('includes/load.php');
  // Checkin What level user has permission to view this page
//page_require_level(6);
?>
<?php
$user=find_by_id('users',$_SESSION['user_id']);
//var_dump($user['id']);exit();
$satker = find_all_global('satker',$user['id_satker'],'id');
$sales = find_all_global('kekurangan_verif',$_GET['id'],'id_pengajuan');
?>
<?php

if($_GET['s']=='update'){
 
  $id = remove_junk($db->escape($_GET['id']));
  $kekurangan_v = find_by_id('kekurangan_verif',$id);
 //var_dump($kekurangan_v);die;
 $idp = $kekurangan_v['id_pengajuan'];
  $query  = "UPDATE kekurangan_verif SET";
  $query .=" status_p= {$_SESSION['user_id']} WHERE id='{$id}'";

 //echo $query;die;

  if($db->query($query)){
    $session->msg('s',"Status Update ");
    if($user['user_level']==2){
     redirect('fitur_verif.php?id='.$idp, false);
   }else{
    redirect('fitur_verif.php?id='.$idp, false);
  }
} else {
  $session->msg('d',' Sorry failed to added!');
  if($user['user_level']==2){
   redirect('fitur_verif.php?id='.$idp, false);
 }else{
  redirect('fitur_verif.php?id='.$idp, false);
}
}
}

if(isset($_POST['submit_mak'])){
 $req_fields = array('keterangan','id_pengajuan');
 validate_fields($req_fields);
 if(empty($errors)){
   $keterangan = remove_junk($db->escape($_POST['keterangan']));
   $id_pengajuan = remove_junk($db->escape($_POST['id_pengajuan']));
  
   $query  = "INSERT INTO kekurangan_verif (";
   $query .=" keterangan,id_pengajuan";
   $query .=") VALUES (";
   $query .=" '{$keterangan}','{$id_pengajuan}'";
   $query .=")";
   if($db->query($query)){
     $session->msg('s',"Keterangan added ");
     if($user['user_level']==2){
      redirect('fitur_verif.php?id='.$id_pengajuan, false);
    }else{
     redirect('fitur_verif.php?id='.$id_pengajuan, false);
   }
 } else {
   $session->msg('d',' Sorry failed to added!');
   if($user['user_level']==2){
    redirect('fitur_verif.php?id='.$id_pengajuan, false);
  }else{
   redirect('fitur_verif.php?id='.$id_pengajuan, false);
 }
}

} else{
 $session->msg("d", $errors);
 redirect('fitur_verif.php?id='.$id_pengajuan,false);
}

}

if($_GET['s']=='konfirmasi'){
    $id = remove_junk($db->escape($_GET['id']));
    $kekurangan = find_by_id('kekurangan_verif',(int)$id);
    $id_pengajuan = $kekurangan['id_pengajuan'];
    $idk =$kekurangan['id'];
   
    $query  = "UPDATE kekurangan_verif SET";
    $query .=" status_done=1 WHERE id='{$idk}'";

    if($db->query($query)){
      $session->msg('s',"Status Update ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_pengajuan, false);
     }else{
      redirect('fitur_verif.php?id='.$id_pengajuan, false);
    }
  } else {
    $session->msg('d',' Sorry failed to added!');
    if($user['user_level']==2){
     redirect('fitur_verif.php?id='.$id_pengajuan, false);
   }else{
    redirect('fitur_verif.php?id='.$id_pengajuan, false);
  }
 }
 }

 if($_GET['s']=='batal'){
  $id = remove_junk($db->escape($_GET['id']));
  $kekurangan = find_by_id('kekurangan_verif',(int)$id);
  $id_pengajuan = $kekurangan['id_pengajuan'];
  $idk =$kekurangan['id'];
 
  $query  = "UPDATE kekurangan_verif SET";
  $query .=" status_done=0 WHERE id='{$idk}'";

  if($db->query($query)){
    $session->msg('s',"Status Update ");
    if($user['user_level']==2){
     redirect('fitur_verif.php?id='.$id_pengajuan, false);
   }else{
    redirect('fitur_verif.php?id='.$id_pengajuan, false);
  }
} else {
  $session->msg('d',' Sorry failed to added!');
  if($user['user_level']==2){
   redirect('fitur_verif.php?id='.$id_pengajuan, false);
 }else{
  redirect('fitur_verif.php?id='.$id_pengajuan, false);
}
}
}





if($_GET['s'] == 'delete'){
    $id = remove_junk($db->escape($_GET['id']));
    $kekurangan = find_by_id('kekurangan_verif',(int)$id);
    $id_pengajuan = $kekurangan['id_pengajuan'];
    $delete_id = delete_by_id('kekurangan_verif',(int)$kekurangan['id']);

    if($delete_id){
      $session->msg('s',"Keterangan added ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_pengajuan, false);
     }else{
      redirect('fitur_verif.php?id='.$id_pengajuan, false);
     }
  } else {
    $session->msg('d',' Sorry failed to added!');
    if($user['user_level']==2){
     redirect('fitur_verif.php?id='.$id_pengajuan, false);
   }else{
    redirect('fitur_verif.php?id='.$id_pengajuan, false);
  }
 }
 }

 if($_GET['status']=='terima'){

  $verif = find_by_id('verifikasi',$_GET['id']);
  $id_verif = $_GET['id'];
  $id_user =$user['id'];
  $update ="UPDATE `verifikasi` SET `status_pengajuan`= 1 WHERE `id_pengajuan` =".$id_verif;
  $pengajuan ="UPDATE `pengajuan` SET `status_verifikasi`=$id_user,`status`=1 WHERE `id` =".$id_verif;
  $db->query($pengajuan); 
    if($db->query($update)){
      $session->msg('s',"Sukses verifikasi di terima ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
      }else{
      redirect('fitur_verif.php?id='.$id_verif, false);
      }
    } else {
      $session->msg('d',' Sorry failed to Insert!');
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
     }else{
        redirect('fitur_verif.php?id='.$id_verif, false);
     }
    }
}


if($_GET['status']=='tolak'){
  $verif = find_by_id('verifikasi',$_GET['id']);
  $id_verif = $_GET['id'];
  $id_user =$user['id'];
  $update ="UPDATE `verifikasi` SET `status_pengajuan`=2  WHERE `id_pengajuan` =".$id_verif;
  $pengajuan ="UPDATE `pengajuan` SET `status_verifikasi`=$id_user,`status`=2 WHERE `id` =".$id_verif;
  $db->query($pengajuan); 

    if($db->query($update)){
      $session->msg('s',"Sukses verifikasi di terima ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
      }else{
      redirect('fitur_verif.php?id='.$id_verif, false);
      }
    } else {
      $session->msg('d',' Sorry failed to Insert!');
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
     }else{
        redirect('fitur_verif.php?id='.$id_verif, false);
     }
    }
}

if($_GET['status']=='terima'){

  $verif = find_by_id('verifikasi',$_GET['id']);
  $id_verif = $_GET['id'];
  $id_user =$user['id'];
  $update ="UPDATE `verifikasi` SET `status_pengajuan`= 1 WHERE `id_pengajuan` =".$id_verif;
  $pengajuan ="UPDATE `pengajuan` SET `status_verifikasi`=$id_user,`status`=1 WHERE `id` =".$id_verif;
  $db->query($pengajuan); 
    if($db->query($update)){
      $session->msg('s',"Sukses verifikasi di terima ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
      }else{
      redirect('fitur_verif.php?id='.$id_verif, false);
      }
    } else {
      $session->msg('d',' Sorry failed to Insert!');
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
     }else{
        redirect('fitur_verif.php?id='.$id_verif, false);
     }
    }
}


if($_GET['status']=='terimav'){
  $verif = find_by_id('verifikasi',$_GET['id']);
  $id_verif = $_GET['id'];
  $id_user =$user['id'];
  $pengajuan ="UPDATE `pengajuan` SET `verifikasi_kasubbag_v`=1 WHERE `id` =".$id_verif;
  $db->query($pengajuan); 

    if($db->query($update)){
      $session->msg('s',"Sukses verifikasi di terima ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
      }else{
      redirect('fitur_verif.php?id='.$id_verif, false);
      }
    } else {
      $session->msg('d',' Sorry failed to Insert!');
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
     }else{
        redirect('fitur_verif.php?id='.$id_verif, false);
     }
    }
}

if($_GET['status']=='terimappspm'){
  $verif = find_by_id('verifikasi',$_GET['id']);
  $id_verif = $_GET['id'];
  $id_user =$user['id'];
  $pengajuan ="UPDATE `pengajuan` SET `status_ppspm`=1 WHERE `id` =".$id_verif;
  $db->query($pengajuan); 

    if($db->query($update)){
      $session->msg('s',"Sukses verifikasi di terima ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
      }else{
      redirect('fitur_verif.php?id='.$id_verif, false);
      }
    } else {
      $session->msg('d',' Sorry failed to Insert!');
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
     }else{
        redirect('fitur_verif.php?id='.$id_verif, false);
     }
    }
}

if($_GET['status']=='tolakv'){
  $verif = find_by_id('verifikasi',$_GET['id']);
  $id_verif = $_GET['id'];
  $id_user =$user['id'];
  $pengajuan ="UPDATE `pengajuan` SET `verifikasi_kasubbag_v`=2 WHERE `id` =".$id_verif;
  $db->query($pengajuan); 

    if($db->query($update)){
      $session->msg('s',"Sukses verifikasi di terima ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
      }else{
      redirect('fitur_verif.php?id='.$id_verif, false);
      }
    } else {
      $session->msg('d',' Sorry failed to Insert!');
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
     }else{
        redirect('fitur_verif.php?id='.$id_verif, false);
     }
    }
}


if($_GET['status']=='tolakppspm'){
  $verif = find_by_id('verifikasi',$_GET['id']);
  $id_verif = $_GET['id'];
  $id_user =$user['id'];
  $pengajuan ="UPDATE `pengajuan` SET `status_ppspm`=2 WHERE `id` =".$id_verif;
  $db->query($pengajuan); 

    if($db->query($update)){
      $session->msg('s',"Sukses verifikasi di terima ");
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
      }else{
      redirect('fitur_verif.php?id='.$id_verif, false);
      }
    } else {
      $session->msg('d',' Sorry failed to Insert!');
      if($user['user_level']==2){
       redirect('fitur_verif.php?id='.$id_verif, false);
     }else{
        redirect('fitur_verif.php?id='.$id_verif, false);
     }
    }
}


?>



<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-6">
    <?php echo display_msg($msg); ?>
  </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading clearfix">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>All Verif</span>
        </strong>
        <div class="pull-right">
<?php 
   $user1=find_by_id('users',$_SESSION['user_id']);?>
    
         
        <?php $verif= find_all_global('verifikasi',$_GET['id'],'id_pengajuan'); 
         $pengajuan= find_all_global('pengajuan',$_GET['id'],'id'); 
        $user = find_by_id('users',(int)$pengajuan[0]['status_verifikasi']);
     if($user1['user_level'] != 7 and $user1['user_level'] != 10 ){
       
          if($pengajuan[0]['status']==1){
        ?>
         <a href="uploads/users/Petunjuk Pelaksanaan Pengajuan _ Pertanggungjawaban Anggaran_Rev01.pdf" class="btn btn-success">Preview Panduan Verif</a>
        <span class="btn btn-success" disabled="disabled">status Dierima oleh <?php echo $user['name'];?></span>
        <?php }else if($pengajuan[0]['status']==2){?>
        <span class="btn btn-danger" disabled="disabled">status Ditolak oleh <?php echo $user['name'];?></span>
        <?php }else{ ?>
        <span class="btn btn-warning" disabled="disabled">Belom diProses</span>
          <?php }?>

          <a href="fitur_verif.php?status=terima&id=<?=$_GET['id']?>" class="btn btn-success">Teirma</a>
          <a href="fitur_verif.php?status=tolak&id=<?=$_GET['id']?>" class="btn btn-danger">Tolak</a>
             
         
         <a href="#" class="btn btn-primary" id="komentar" data-toggle="modal" data-target="#TambahMAK" data-id='<?=$_GET['id'];?>'>Tambah</a>
        
         <?php 
     }
          $user1=find_by_id('users',$_SESSION['user_id']);
         if($user1['user_level'] == 7 ){?>
         <br><br>
         <a href="fitur_verif.php?status=terimav&id=<?=$_GET['id']?>" class="btn btn-success">Teirma</a>
         <a href="fitur_verif.php?status=tolakv&id=<?=$_GET['id']?>" class="btn btn-danger">Tolak</a>
        <?php if($pengajuan[0]['verifikasi_kasubbag_v']==1){ ?>
        <span class="btn btn-success" disabled="disabled">status Dierima oleh Kasubbag Verifikator</span>
        <?php }else if($pengajuan[0]['verifikasi_kasubbag_v']==2){?>
        <span class="btn btn-danger" disabled="disabled">status Ditolak oleh Kasubbag Verifikator</span>
        <?php }else{ ?>
        <span class="btn btn-warning" disabled="disabled">Belom diProses</span>
          <?php }} ?>

         <?php if($user1['user_level'] == 10 ){?>
         <br><br>
         <a href="fitur_verif.php?status=terimappspm&id=<?=$_GET['id']?>" class="btn btn-success" <?php if($pengajuan[0]['verifikasi_kasubbag_v']!=1){ ?> disabled <?php } ?> >Teirma</a>
         <a href="fitur_verif.php?status=tolakppspm&id=<?=$_GET['id']?>" class="btn btn-danger" <?php if($pengajuan[0]['verifikasi_kasubbag_v']!=1){ ?> disabled <?php } ?>>Tolak</a>
        <?php if($pengajuan[0]['status_ppspm']==1){ ?>
        <span class="btn btn-success" disabled="disabled">status Dierima oleh PPSPM</span>
        <?php }else if($pengajuan[0]['status_ppspm']==2){?>
        <span class="btn btn-danger" disabled="disabled">status Ditolak oleh PPSPM</span>
        <?php }else{ ?>
        <span class="btn btn-warning" disabled="disabled">Belom diProses</span>
          <?php }} ?>

          <a href="pengajuan_verif.php" class="btn btn-primary" >Back</a>
        </div>
      </div>
      <div class="panel-body" style="width:100%">
        <table id="tabel" class="table table-bordered table-striped" style="width:100%;">
          <thead>
            <tr>
              <th class="text-center" style="width: 5%;">#</th>
              <th class="text-center" style="width: 25%;"> Keterangan</th>
              <th class="text-center" style="width: 15%;"> Aksi </th>         
            </tr>
          </thead>
          <tbody>
           <?php foreach ($sales as $sale):?>
             <tr>
               <td class="text-center"><?php echo count_id();?></td>
               <td class="text-center"><?php echo $sale['keterangan']; ?></td>
               <td class="text-center">
                  <a href="fitur_verif.php?s=edit&id=<?=$sale['id']?>" class="btn btn-warning">Edit</a>
                  <a onclick="return confirm('Yakin Hapus?')" href="fitur_verif.php?id=<?=$sale['id']?>&s=delete" class="btn btn-danger">Delete</a>

                  <?php if($sale['status_p'] == 0){   ?>
                  <a href="fitur_verif.php?s=update&id=<?=$sale['id']?>" class="btn btn-success">Send PUM/BPP</a>
                  <?php }else{ ?>
                    <span class="btn btn-warning" disabled="disabled">Ditindaklanjuti BPP/PUM</span>
                    <?php } ?>


                  <?php if($sale['status_done']==0){?>
                  <a href="fitur_verif.php?id=<?=$sale['id']?>&s=konfirmasi" class="btn btn-success">Proses</a>
                  <span class="btn-danger">Belom dilengkapi</span>
                  <?php }else{ ?>
                    <a href="fitur_verif.php?id=<?=$sale['id']?>&s=batal" class="btn btn-danger">Batal</a>
                    <span class="btn-success">Lengkap</span>
                    <?php } ?>
              </td>  
           </tr>
         <?php endforeach;?>
       </tbody>
     </table>
   </div>
 </div>
</div>
</div>


<!-- Modal input komentar-->
<div class="modal fade" id="TambahMAK" tabindex="-1" role="dialog" aria-labelledby="nodin" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Komentar</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="fitur_verif.php" method="POST">
        <div class="modal-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Uraian Ketarangan</label>
            <textarea class="form-control" name="keterangan"></textarea>   
            <input type="hidden" name="id_pengajuan" id="id">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <input type="submit" class="btn btn-primary" name="submit_mak" value="Save">
        </div>
      </form>
    </div>
  </div>
</div>

<?php include_once('layouts/footer.php'); ?>
