$(document).ready(function () {
    $("tr #btnDelete").click(function () {
        var idh = $(this).parent().find("#idh").val();
        swal({
            title: "¿Está seguro de Eliminar?",
            text: "¡Si elimina no volverá a recuperar la reserva!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
                .then((willDelete) => {
                    if (willDelete) {
                        swal("Ha sido eliminado correctamente", {
                            icon: "success",
                        }).then((willDelete) =>{
                            if (willDelete){
                                parent.location.href="Controlador?menu=NuevaReserva&accion=default";
                            }
                        });
                    } else {
                        swal("¡Registro no eliminado!");
                    }
                });
        eliminar(idh);
    });
    function eliminar(idh) {
        var url = "Controlador?menu=NuevaReserva&accion=Eliminar";
        $.ajax({
            type: 'POST',
            url: url,
            data: "idh=" + idh,
            success: function (data, textStatus, jqXHR) {
                
            }
        });
    }
});

