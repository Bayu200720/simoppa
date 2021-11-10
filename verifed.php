<?php
  $page_title = 'All Pengajuan';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  $user = find_by_id('users',$_SESSION['user_id']);
 
   if($user['user_level'] == 2){ //echo "ok 3";exit();
   page_require_level(3); 
   }else if($user['user_level'] == 7 ){ //echo "7";exit();
     page_require_level(7); 
   }else{ //echo "3";exit();
     page_require_level(3); 
   }


?>
<?php
//dd($_SESSION);
$sales = find_pengajuanok_user_group($_SESSION['user_id']);

if(isset($_POST['cari'])){
  $sql = "select * from nodin where tanggal between '".$_POST['tgl1']."' and '".$_POST['tgl2']."'";
  $sales= find_pengajuanok_tgl($_POST['tgl1'],$_POST['tgl2']);
 }
//var_dump($sales);exit();
//print_r($sales);exit();//find_all('pengajuan');
$id = find_all_global('pengajuan',$_GET['id'],'id_nodin');
$idi= $_GET['id'];
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
            <span>All Pengajuan</span>
          </strong>
          <div class="pull-right">
              <form action="pengajuan_verif.php" method="POST" >
          
                    <input type="date"  name="tgl1">
              
                    <input type="date"   name="tgl2"> 
              
                    <input type="submit" class="btn btn-primary" name="cari" value="Cari">
                
              </form>
          </div>
        </div>
        <div class="panel-body">
          <table id="tabel" class="table table-bordered table-striped" width="100%">
            <thead>
              <tr>
                <th class="text-center" style="width: 50px;">#</th>
                <th class="text-center" >Waktu</th>  
                <th class="text-center" style="width: 100px;"> Actions </th>
             </tr>
            </thead>
           <tbody>
             <?php $tot=0; foreach ($sales as $sale):?>
             <tr>
               <td class="text-center"><?php echo count_id();?></td>         
               <td class="text-center">
                        <?php $nodin= find_by_id('nodin',$sale['id_nodin']); $bulan= tanggal_indo($nodin['tanggal']); $bln=explode(' ',$bulan); echo $bln[1]; ?>
               </td>
               <td class="text-center">
                  <div class="btn-group">
                        <?php 
                            $nodin= find_by_id('nodin',$sale['id_nodin']);
                            $bulan = explode('-',$nodin['tanggal']);
                        ?>
                     <a href="detail_verif.php?bulan=<?=$bulan[1];?>" class="btn btn-success btn-xs" title="Detail Dokumen Verif" data-toggle="tooltip" > <span class="glyphicon glyphicon-folder-open"></span></a>
                    
                  </div>
               </td>
             </tr>
             <?php $tot+=$tp['jum']; endforeach;?>
           </tbody>
           <tfoot>
             <tr>
                <th class="text-center" >#</th>
                <th class="text-center" >  </th>
                <th class="text-center" >  </th>
             </tr>
             <tfoot>
         </table>
        </div>
      </div>
    </div>
  </div>




<?php include_once('layouts/footer.php'); ?>
