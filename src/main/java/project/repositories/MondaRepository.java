package project.repositories;

import project.domain.DatabaseConnection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.Objects;

public class MondaRepository {

    public static void registerMonda(String tipoOp,int quantidade, String tipoUni, Date diaOp, String nomeParcela, String variedade, Date diaCult) throws SQLException {

        CallableStatement callStmt = null;
        try {
            Connection connection = DatabaseConnection.getInstance().getConnection();
            callStmt = connection.prepareCall("{ call registarMonda(?,?,?,?,?,?,?) }");

            callStmt.setString(1, tipoOp);                                  //Tipo Operação (String)

            callStmt.setInt(2, quantidade);                                 //Quantidade (int)
            callStmt.setString(3, tipoUni);                                 //Tipo Unidade (String)
            callStmt.setDate(4, new java.sql.Date(diaOp.getTime()));        //Data Operação (Date)
            callStmt.setString(5, nomeParcela);                             //Nome Parcela (String)
            callStmt.setString(6, variedade);                               //Variedade (String)
            callStmt.setDate(7, new java.sql.Date(diaCult.getTime()));      //Dia Cultivação (Date)

            callStmt.execute();
            connection.commit();
        } finally {
            if(!Objects.isNull(callStmt)) {
                callStmt.close();
            }
        }

    }
}
