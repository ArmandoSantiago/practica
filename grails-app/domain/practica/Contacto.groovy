package practica

class Contacto {
    String tipoContacto
    String descripcion

    static belongsTo = [persona: Persona]

    static constraints = {
        tipoContacto inList: ["Facebook", "Teléfono casa", "Teléfono celular", "Correo electronico"]
        descripcion nullable: true, blank: true
    }
}
