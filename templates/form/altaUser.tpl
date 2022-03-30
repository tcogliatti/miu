   <article class="d-flex justify-content-evenly mt-5">
        
        <div class="shadow-lg card text-dark bg-light mb-3 w-75">
            <div class="card-header text-white bg-dark mb-3 align-items-center">
            <p class="title-card">Nuevo Cliente</p>    
            </div>
            <form action="" method="post" id="formAltaUsr">
                <div class="card-body w-100 rounded-0">
                    
                    <!-- nombre -->
                    <div class="row g-6 mb-3">  
                        <div class="col-2 fw-bold pt-2">
                            <p class="titulo-campo">Nombre</p>
                        </div>
                        <div class="col-5">
                            <input class="input-form" type="text" name="first_name"  required>
                            <label class="etiqueta">nombre</label>
                        </div>
                        <div class="col-4 ms-4">
                            <input class="input-form" type="text" name="last_name" required>
                            <label class="etiqueta">apellido</label>
                        </div>
                    </div>

                    <!-- email -->
                    <div class="row g-2 mb-3">  
                        <div class="col-2 fw-bold pt-2">
                            <p class="titulo-campo">email</p>
                        </div>
                        <div class="col-9">
                            <input type="email" class="input-form" name="email" aria-describedby="emailHelp" required>
                        </div>
                    </div>

                    <!-- telefono -->

                    <div id="boxTel">
                        <div v-for="i in counterTel" class="row g-2 mb-1" :id="i">  
                            <div class="col-2 fw-bold pt-2">
                                <p v-if="i == 1" class="titulo-campo">Teléfono</p>
                                <p v-else class="titulo-campo"></p>
                            </div>
                            <div class="col-2">
                                <input class="input-form input-number-no-button" type="text" 
                                                name="cod_area" placeholder="Sin 0 para móvil" id="cod_area" 
                                                onkeypress="checkOnlyNumber(event)" required>
                                <label class="etiqueta">código de área</label>
                            </div>
                            <div class="col-4 ms-4">
                                <input class="input-form input-number-no-button" type="text" name="tel" 
                                                placeholder="sin 15 para móvil" id="tel"
                                                onkeypress="checkOnlyNumber(event)" required>
                                <label class="etiqueta">teléfono</label>
                            </div>
                            <div v-if="i > 1" class="form-check form-switch col-1 mt-2 ms-4">
                                <img src="images/del.png" class="ico-form mt-2 add-btn del-btn" alt="" 
                                                v-if="i == counterTel" v-on:click="counterTel -= 1">
                            </div>
                        </div>
                    
                        <div class="row g-2 mt-0 mb-3">
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo"></p>
                            </div>
                            <div class="col-2">
                            </div>  
                            <div class="col-4 d-flex justify-content-center align-top ms-4" >
                                <img src="images/add.png" class="ico-form mt-0 add-btn" alt="" 
                                                v-on:click="counterTel += 1">
                            </div>
                        </div>
                    </div>
                    <!-- direccion -->
                    <div class="row g-1 mb-3">  
                        <div class="col-2 fw-bold pt-2">
                            <p class="titulo-campo">Dirección</p>
                        </div>
                        <div class="row col 6 g-2 mb-3">
                            <div class="col-3">
                                <input class="input-form" type="text" name="provincia" id="pcia" required>
                                <label class="etiqueta">provincia</label>
                            </div>
                            <div class="col-3 ms-4">
                                <input class="input-form" type="text" name="localidad" id="localidad" required>
                                <label class="etiqueta">localidad</label>
                            </div>
                            <div class="col-2 ms-4">
                                <input class="input-form input-number-no-button" type="text" name="zip"
                                                                    onkeypress="checkOnlyNumber(event)" id="zip" required>
                                <label class="etiqueta">código postal</label>
                            </div>
                            <div class="col-4">
                                <input class="input-form" type="text" name="calle" id="calle" required>
                                <label class="etiqueta">calle</label>
                            </div>
                            <div class="col-2 ms-4">
                                <input class="input-form" type="text" name="numero" 
                                                                    onkeypress="checkOnlyNumber(event)" id="addressNumb" required>
                                <label class="etiqueta">numero</label>
                            </div>
                            <div class="col-2 ms-4">
                                <input class="input-form" type="text" name="piso" id="piso">
                                <label class="etiqueta">piso</label>
                            </div>
                            <div class="col-2 ms-4">
                                <input class="input-form" type="text" name="dpto" id="dpto">
                                <label class="etiqueta">departamento</label>
                            </div>  
                        </div>

                        <!-- redes -->
                        <div class="row g-6 mb-3" id="redes">  
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo">Redes</p>
                            </div>
                            <div class="col-1">
                                <img src="images/instgrm_color.png" class="ico-form ico-off" alt="" id="instaIco">
                            </div>
                            <div class="col-5">
                                <input class="input-form" type="text" name="instagram" id="inputInsta" required disabled >
                                <label class="etiqueta">Instagram</label>
                            </div>
                            <div class="form-check form-switch col-1 mt-2 ms-4">
                                <input class="form-check-input" type="checkbox" role="switch" id="switchInsta">
                            </div>
                        </div>
                        <div class="row g-6 mb-1">  
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo"></p>
                            </div>
                            <div class="col-1">
                                <img src="images/fsbk_color.png" class="ico-form ico-off" alt="" id="faceIco">
                            </div>
                            <div class="col-5">
                                <input class="input-form" type="text" name="facebook" id="inputFb" required disabled >
                                <label class="etiqueta">Facebook</label>
                            </div>
                            <div class="form-check form-switch col-1 mt-2 ms-4">
                                <input class="form-check-input" type="checkbox" role="switch" id="switchFb">
                            </div>
                        </div>
                        <div class="row g-6 mt-0 mb-4">
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo"></p>
                            </div>
                            <div class="col-1">
                            </div>  
                            <!-- <div class="col-5 d-flex justify-content-center align-top">
                                <img src="images/add.png" class="ico-form mt-0 add-btn" alt="">
                            </div> -->
                        </div>

                        <!-- documentos -->
                        <div class="row g-6 mb-3" id="docBox">  
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo">Documento</p>
                            </div>
                            <div class="row g-2 col-2">
                                <div class="form-check col-1">
                                    <input class="form-check-input" type="radio" 
                                        name="docment" id="docment1" value="dni" checked>
                                    <label class="etiqueta" for="docment">
                                      DNI
                                    </label>
                                </div>
                                <div class="form-check col-1 ms-5">
                                    <input class="form-check-input" type="radio" 
                                        name="docment" id="docment2" value="cuit">
                                    <label class="etiqueta" for="docment">
                                        CUIT
                                    </label>
                                </div>
                            </div>
                            <div class="col-5">
                                <input class="input-form" type="text" name="dni" id="docInput"
                                                            placeholder="DNI sin puntos"
                                                            onkeypress="checkOnlyNumber(event)"
                                                            v-validate="required|numeric|max:length">
                            </div>
                        </div>

                        <!-- tipo de cliente -->
                        <div class="row g-6 mb-3">  
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo">Tipo Cliente</p>
                            </div>
                            <div class="row g-8 col-8">
                                <div class="form-check col-4 mt-2">
                                    <input class="form-check-input" type="radio" name="client" id="exampleRadios1" value="dni" checked>
                                    <label class="etiqueta" for="exampleRadios1">
                                      Consumidor Final
                                    </label>
                                </div>
                                <div class="form-check col-4 mt-2">
                                    <input class="form-check-input" type="radio" name="client" id="exampleRadios2" value="mayorista">
                                    <label class="etiqueta" for="exampleRadios2">
                                        Mayorísta
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- medios de pago -->
                        <div class="row g-6 mb-3">  
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo">Medios de Pago</p>
                            </div>
                            <div class="col-1">
                                <img src="images/mp_color.png" class="ico-form ico-off" alt="" id="icoMP">
                            </div>
                            <div class="col-5">
                                <input class="input-form" type="text" name="ml" disabled id="inputMP">
                                <label class="etiqueta">Mercado Pago</label>
                            </div>
                            <div class="form-check form-switch col-1 mt-2 ms-4">
                                <input class="form-check-input" type="checkbox" role="switch" id="switchMP">
                            </div>
                        </div>
                        <div class="row g-6 mb-1">  
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo"></p>
                            </div>
                            <div class="col-1">
                                <img src="images/bnk_color.png" class="ico-form ico-off" alt="" id="icoBco">
                            </div>
                            <div class="col-4">
                                <input class="input-form" type="text" name="cbu" disabled="true" id="inputCBU" required>
                                <label class="etiqueta">CBU o Alias</label>
                            </div>
                            <div class="col-3">
                                <input class="input-form" type="text" name="bank" disabled="true" id="inputBco" required>
                                <label class="etiqueta">Banco</label>
                            </div>
                            <div class="form-check form-switch col-1 mt-2 ms-4">
                                <input class="form-check-input" type="checkbox" role="switch" id="switchBco">
                            </div>
                        </div>
                        <div class="row g-2 mt-0 mb-3">
                            <div class="col-2 fw-bold pt-2">
                                <p class="titulo-campo"></p>
                            </div>
                            <div class="col-1">
                            </div>  
                            <!-- <div class="col-5 d-flex justify-content-center align-top">
                                <img src="images/add.png" class="ico-form mt-0 add-btn" alt="">
                            </div> -->
                        </div>

                        <!-- enviar -->
                        <div class="d-flex justify-content-end">  
                            <button type="submit" class="btn btn-warning btn-lg me-5 col-3" id="submitForm" onclick="verifyData(event)">Cargar</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

    </article>
   
   <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
   <script type="text/javascript" src="js/altaUser.js"></script>