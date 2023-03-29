/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.admin;

import java.io.Serializable;
/**
 *
 * @author admin
 */
public class Cliente implements Serializable {
    
    private String nombre;
    private String apellidoP;
    private String apellidoM;
    private Integer edad;
    private String genero;
    private String carrera;
    private String semes;
    private float calif;

    public Cliente()
    {
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getSemes() {
        return semes;
    }

    public void setSemes(String semes) {
        this.semes = semes;
    }

    public float getCalif() {
        return calif;
    }

    public void setCalif(float calif) {
        this.calif = calif;
    }

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre) 
    {
        this.nombre = nombre;
    }

    public String getApellidoP()
    {
        return apellidoP;
    }

    public void setApellidoP(String apellidoP)
    {
        this.apellidoP = apellidoP;
    }

    public String getApellidoM() 
    {
        return apellidoM;
    }

    public void setApellidoM(String apellidoM)
    {
        this.apellidoM = apellidoM;
    }

    public Integer getEdad() 
    {
        return edad;
    }

    public void setEdad(Integer edad)
    {
        this.edad = edad;
    }
}
