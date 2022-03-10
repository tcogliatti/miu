<?php
/* Smarty version 3.1.39, created on 2022-03-10 01:55:32
  from '/opt/lampp/htdocs/miu/templates/html/header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62294c84cd2914_44437234',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6721311f119300e035d8d2ffb8e43846903b9a12' => 
    array (
      0 => '/opt/lampp/htdocs/miu/templates/html/header.tpl',
      1 => 1646832225,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62294c84cd2914_44437234 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="es">

<head>
    <base href="<?php echo $_smarty_tpl->tpl_vars['base']->value;?>
">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css ">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Stencil+Text:wght@900&display=swap" rel="stylesheet">

</head>

<body>
 
    <container class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">MÜ Hongos</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Ventas
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                      <li><a class="dropdown-item" href="#">Pedidos</a></li>
                      <li><a class="dropdown-item" href="#">Ventas</a></li>
                      <li><a class="dropdown-item" href="#">Cobros</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Clientes</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Compras
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                      <li><a class="dropdown-item" href="#">Pedidos</a></li>
                      <li><a class="dropdown-item" href="#">Pagos</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Proveedores</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Administracion
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                      <li><a class="dropdown-item" href="#">Usuarios</a></li>
                      <li><a class="dropdown-item" href="#">etceteras</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">otros eteteras</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled">No disponible</a>
                  </li>
                </ul>
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div>
            </div>
          </nav>
    </container><?php }
}
