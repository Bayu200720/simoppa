<?php
//var_dump(__DIR__.'../includes/load.php');die;
//require __DIR__.'\../includes/load.php';

require_once('includes/load.php');
//phpinfo();die;
$detail_pengajuan_benPage = '\detail_pengajuan_ben.php';

$user = find_by_id('users',(int)$_SESSION['user_id']);
//$pengajuan = find_by_id('pengajuan',$_GET['id']);
$detail_pengajuan = find_by_id('detail_pengajuan',$_GET['id']);
//var_dump($detail_pengajuan['id_pengajuan']);die;

$id = $detail_pengajuan['id'];//$_POST['id'];
$photo = new Media();
$photo->upload($_FILES['file_upload'], $detail_pengajuan['id']);
if ($photo->process_spby($id)) {
    // $session->msg('s','dokumen has been uploaded.');
    // if($user['user_level'] == 5){
      // redirect($pertanggungjawabanPage, false);
    // }else{
    //   redirect($pertanggungjawabanPage.'?id='.$pengajuan['id']);
    // }
    echo json_encode([
      'success' => true,
      'data' => [
        'user_level' => $user['user_level'],
        'id' => $pengajuan['id']
      ],
      'redirect' => [
        'to' => $user['user_level'] === 5 ? $detail_pengajuan_benPage : "$detail_pengajuan_benPage?id=".$detail_pengajuan['id_pengajuan'],
        'status' => !!$user['user_level'] === 5
      ],
      'message' => 'dokumen has been uploaded.'
    ]);
} else {
  // $session->msg('d',join($photo->errors));
  // if($user['user_level'] == 5){
  //   redirect($pertanggungjawabanPage.'?id='.$pengajuan['id'], false);
  // }else{
  //   redirect($pertanggungjawabanPage.'?id='.$pengajuan['id']);
  // }
  echo json_encode([
    'success' => false,
    'data' => [
      'user_level' => $user['user_level'],
      'id' => $pengajuan['id']
    ],
    'redirect' => [
      'to' => "$detail_pengajuan_benPage?id=".$detail_pengajuan['id_pengajuan'],
      'status' => !!$user['user_level'] === 5
    ],
    'message' => join($photo->errors)
  ]);
}

