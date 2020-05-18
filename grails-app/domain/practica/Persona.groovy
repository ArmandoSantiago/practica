package practica

class Persona {
    String nombres
    String apellidos
    int edad
    String genero

    static hasMany = [contacto: Contacto]

    static constraints = {
        apellidos nullable: true, blank: true
        edad max: 100, min: 1
        genero inList: ["Masculino", "Femenino"]
    }
}
