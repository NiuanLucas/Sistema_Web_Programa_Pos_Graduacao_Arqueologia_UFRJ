

<?php

if (isset($_FILES['image'])) {
    $image = $_FILES['image']['name'];
    $target = "upload/" . basename($image);
    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
        //pegar url inteira
        echo '//localhost/localhost/lah-museu/dashboard/dados/' . $target;
        exit();
    } else{
        echo 'Failed to upload image';
        exit();
    }
}





/*
if(isset($_FILES['upload']['name']))
{
	$file=$_FILES['upload']['name'];
	$filetmp=$_FILES['upload']['tmp_name'];

	move_uploaded_file($filetmp,'upload/'.$file);
	$function_number=$_GET['CKEditorFuncNum'];
	$url='../../dashboard/dados/upload/'.$file;
	$message='';
	echo "<script>window.parent.CKEDITOR.tools.callFunction('".$function_number."','".$url."','".$message."');</script>";     
}
*/







//upload.php

/*

if(isset($_FILES['upload']['name']))

{

 $file = $_FILES['upload']['tmp_name'];

 $file_name = $_FILES['upload']['name'];

 $file_name_array = explode(".", $file_name);

 $extension = end($file_name_array);

 $new_image_name = rand() . '.' . $extension;

 chmod('upload', 0777);

 $allowed_extension = array("jpg", "gif", "png");

 if(in_array($extension, $allowed_extension))

 {

  move_uploaded_file($file, 'upload/' . $new_image_name);

  $function_number = $_GET['CKEditorFuncNum'];

  $url = '../../dashboard/dados/upload/' . $new_image_name;

  $message = '';

  echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($function_number, '$url', '$message');</script>";

 }

}


*/
