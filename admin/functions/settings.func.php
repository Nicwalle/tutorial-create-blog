<?php

function email_taken($email){
    global $db;
    $e = ['email'   =>  $email];
    $sql = "SELECT * FROM admins WHERE email = :email";
    $req = $db->prepare($sql);
    $req->execute($e);
    $free = $req->rowCount($sql);

    return $free;
}

function token($length){
    $chars = "azertyuiopqsdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN0123456789";
    return substr(str_shuffle(str_repeat($chars,$length)),0,$length);
}

function add_modo($name,$email,$role,$token){
    global $db;

    $m= [
        'name'      =>  $name,
        'email'     =>  $email,
        'token'     =>  $token,
        'role'      =>  $role
    ];

    $sql = "INSERT INTO admins(name,email,token,role) VALUES(:name,:email,:token,:role)";
    $req = $db->prepare($sql);
    $req->execute($m);

    $subject = "Modo sur le blog";
    $message = '
        <html lang="en" style="font-family: sans-serif;">
            <head>
                <meta charset="UTF-8">
            </head>
            <body>
                Voici votre identifiant et code unique à insérer sur <a href="http://tutos.dev/blog_2-0/admin/index.php?page=new">cette page</a>:
                <br/>Identifiant: '.$email.'
                <br/>Mot de passe: '.$token.'
                <br/>Vous êtes: '.$role.'
                <br/><br/>Après avoir inséré ces informations, vous devrez choisir un mot de passe.
            </body>
        </html>
    ';

    $header = "MIME-Version: 1.0\r\n";
    $header .= "Content-type: text/html; charset=UTF-8\r\n";
    $header .= 'From: no-reply@nicwalle.com' . "\r\n" . 'Reply-To: contact@nicwalle.com' . "\r\n" . 'X-Mailer: PHP/' . phpversion();

    mail($email,$subject,$message,$header);

}

function get_modos(){
    global $db;
    $req = $db->query("
        SELECT * FROM admins
    ");

    $results = [];
    while($rows = $req->fetchObject()){
        $results[] = $rows;
    }
    return $results;
}