
package com.emergentes;

/**
 *
 * @author Gualbert
 */
public class Tarea {
    
    private int id;
    private String tarea;
    private boolean completado;

    public Tarea() {
    }

    public Tarea(int id, String tarea, boolean completado) {
        this.id = id;
        this.tarea = tarea;
        this.completado = completado;
    }

    public Tarea(int id, String tarea) {
        this.id = id;
        this.tarea = tarea;
        this.completado = false;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }

    public boolean isCompletado() {
        return completado;
    }

    public void setCompletado(boolean completado) {
        this.completado = completado;
    }
    
    
    
}
