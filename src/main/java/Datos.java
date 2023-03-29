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
public class Datos implements Serializable{

    private String nombre;
    private float calf;
    private String apelliP;
    private String apelliM;
    private String genero;
    private String carrera;
    private String semes;


    public Datos() 
    {
    }

    public String getApelliP() {
        return apelliP;
    }

    public void setApelliP(String apelliP) {
        this.apelliP = apelliP;
    }

    public String getApelliM() {
        return apelliM;
    }

    public void setApelliM(String apelliM) {
        this.apelliM = apelliM;
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
    
    public String getNombre() 
    {
        return nombre;
    }

    public void setNombre(String nombre) 
    {
        this.nombre = nombre;
    }

    public float getCalf()
    {
        return calf;
    }

    public void setCalf(float calf)
    {
        this.calf = calf;
    }


}
