package project.repositories;

import project.domain.DatabaseConnection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.Objects;

public class ColheitaRepository {

    public static void registerColheita(int quantidade, String tipoUni, Date diaOp, String tipoOp, String nomeParcela, String variedade, Date diaCult) throws SQLException {

        CallableStatement callStmt = null;
        try {
            Connection connection = DatabaseConnection.getInstance().getConnection();
            callStmt = connection.prepareCall("{ call registarColheita(?,?,?,?,?,?,?) }");

            callStmt.setInt(1, quantidade);
            callStmt.setDate(2, new java.sql.Date(diaOp.getTime()));
            callStmt.setString(3, tipoUni);
            callStmt.setString(4, tipoOp);
            callStmt.setString(5, nomeParcela);
            callStmt.setString(6, variedade);
            callStmt.setDate(7, new java.sql.Date(diaCult.getTime()));


            callStmt.execute();
            connection.commit();
        } finally {
            if(!Objects.isNull(callStmt)) {
                callStmt.close();
            }
        }

    };
}
