<?php
$page_title = 'Verif';
require_once('includes/load.php');
  // Checkin What level user has permission to view this page
//page_require_level(6);
?>
<?php
$user=find_by_id('users',$_SESSION['user_id']);
$satker = find_all_global('satker',$user['id_satker'],'id');
$sales = find_all_global('kekurangan_verif',$_GET['id'],'id_pengajuan');
?>
<?php

if($_GET['s']=='update'){
 //var_dump($_GET);exit();
  $id = remove_junk($db->escape($_GET['id']));
  $pengajuan = find_by_id('pengajuan',$id);
  $idp = $pengajuan['id'];
  $query  = "UPDATE pengajuan SET";
  $query .=" followup_verif= 0 WHERE id='{$idp}'";

  if($db->query($query)){
    $session->msg('s',"Status Update ");
    if($user['user_level']==2){
     redirect('fitur_verif_bpp.php?id='.$idp, false);
   }else{
    redirect('fitur_verif_bpp.php?id='.$idp, false);
  }
} else {
  $session->msg('d',' Sorry failed to added!');
  if($user['user_level']==2){
   redirect('fitur_verif_bpp.php?id='.$idp, false);
 }else{
  redirect('fitur_verif_bpp.php?id='.$idp, false);
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
          <?php $pengajuan= find_all_global('pengajuan',$_GET['id'],'id'); 
               
          if($pengajuan[0]['followup_verif'] == 1){   ?>
          <a href="fitur_verif_bpp.php?s=update&id=<?=$_GET['id']?>" class="btn btn-success">Send ke SES</a>
          <?php }else{ ?>
            <span class="btn btn-warning">Ditindaklanjuti BPP/PUM</span>
            <?php } ?>
        
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
                 
                 
              </td>  
           </tr>
         <?php endforeach;?>
       </tbody>
     </table>
   </div>
 </div>
</div>
</div>



<?php include_once('layouts/footer.php'); ?>
