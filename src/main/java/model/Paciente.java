package model;

public class Paciente {

    private String nombre;
    private String apellido;
    private int edad;
    private String dni;
    private String sintomas;

    public Paciente() {}

    public Paciente(String nombre, String apellido, int edad, String dni, String sintomas) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.dni = dni;
        this.sintomas = sintomas;
    }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getApellido() { return apellido; }
    public void setApellido(String apellido) { this.apellido = apellido; }

    public int getEdad() { return edad; }
    public void setEdad(int edad) { this.edad = edad; }

    public String getDni() { return dni; }
    public void setDni(String dni) { this.dni = dni; }

    public String getSintomas() { return sintomas; }
    public void setSintomas(String sintomas) { this.sintomas = sintomas; }
}