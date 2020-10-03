/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.exemplorunscript;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

/**
 *
 * @author marce
 * https://www.toolbox.com/tech/programming/question/running-an-sql-file-from-java-via-jdbc-api-041307/
 * https://howtodoinjava.com/java/io/read-write-utf8-data-file/
 * https://dev.mysql.com/doc/refman/8.0/en/cannot-roll-back.html
 * CREATE USER 'user'@'%' IDENTIFIED BY '123';
grant all privileges on test.* to 'user'@'%' ;
grant all privileges on framework.* to 'user'@'%' ;
flush privileges;
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException  {
        // TODO code application logic here
        Connection c = conecta();
        executa(c);
       
    }
    
    public static void executa(Connection c) throws SQLException {
        String sqlFile = "Endereco2.sql";
        StringBuffer sb = new StringBuffer();
        String s=new String("");
        try {
            File file = new File(sqlFile);
            // be sure to not have line starting with “–” or “/*” or any other non aplhabetical character
            FileInputStream fileIS = new FileInputStream(file);
            InputStreamReader fileISR = new InputStreamReader(fileIS, "UTF-8");//<< este aceita encoding
            BufferedReader br = new BufferedReader(fileISR);
            while((s = br.readLine()) != null){
                //pulando linhas com -- e /*
                if((!s.startsWith("--")) && (!s.startsWith("/*")) && (!s.trim().equals(""))){
                    sb.append(s);
                }
            }
            br.close();
            // here is our splitter ! We use “;” as a delimiter for each request
            // then we are sure to have well formed statements
            String[] inst = sb.toString().split(";");
            c.setAutoCommit(false);///////////////////////////////
            Statement st = c.createStatement();
            System.out.println("Total de Instruções "+inst.length);
            int contador=0;
            for(int i = 0; i<inst.length; i++){
                contador++;
                boolean r=st.execute(inst[i]);
            }
            System.out.println("contador "+contador);
            System.out.println("inst "+inst.length);
            if(contador==inst.length){
                System.out.println("COMMIT");
                c.commit();
                st.close();
            }else{
                c.rollback();
            }
        }
        catch(IOException | SQLException e){
            System.out.println("*** Error : "+e.getMessage());
            c.rollback();
            //System.exit(0);
        }
    }
    
    public static Connection conecta(){
        Connection con=null;
        try {
            //String url="jdbc:mysql://localhost:3307/test";
            String url="jdbc:mysql://localhost:3306/framework?serverTimezone=UTC";
            //String url="jdbc:mysql://localhost:3306/framework";
            String user="user";    
            String pass="123";        
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.out.println("*** Connection Error : "+e.getMessage());
        }
        return con;
    }
    
}
