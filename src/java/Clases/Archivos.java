/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 *
 * @author ManuelDavid
 */
public class Archivos {

    private String direccion;

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    String[] preguntas;

    public String[] leer() throws FileNotFoundException, IOException {
        String cadena, temp = "";
        int i = 0;
        preguntas = new String[12];
        BufferedReader b = new BufferedReader(new FileReader(direccion));
        while ((cadena = b.readLine()) != null) {
            temp = cadena + "<br>";
            preguntas[i] = temp;
            i++;
        }
        return preguntas;
    }
    String[] Tdividido;

    public String[] dividir(String texto) {
        Tdividido = texto.split("-");
        return Tdividido;
    }
}
