<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Usuario</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">         
            <div class="card" style="width:400px">        
                <div class="card-body">
                    <h2>Ingresar al Sistema</h2>
                    <form action="usuarioControlador.jsp" method="post">
                        <div class="form-group">
                            <label for="usuario">Usuario :</label>
                            <input type="text" class="form-control" id="usuario" placeholder="Ingresar usuario" name="usuario">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Contraseña :</label>
                            <input type="password" class="form-control" id="clave" placeholder="Ingresar contraseña" name="clave">
                        </div>
                        <div class="form-group form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" name="remember"> Remember me
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>