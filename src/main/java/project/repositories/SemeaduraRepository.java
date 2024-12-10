package project.repositories;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Objects;

import project.domain.DatabaseConnection;

public class SemeaduraRepository {
	
    public static void registerSemeadura(String tipoOp, String parcelaNome, int qtdOp, int qtdCult, java.util.Date dataOp, String varPlanta) throws SQLException {

        CallableStatement callStmt = null;
        try {
            Connection connection = DatabaseConnection.getInstance().getConnection();
            callStmt = connection.prepareCall("{ call registarSemeadura(?,?,?,?,?,?) }");

            callStmt.setString(1, tipoOp); // tipo operacao
            callStmt.setString(2, parcelaNome); // nome parcela
            callStmt.setInt(3, qtdOp); // quantidade de operacao
            callStmt.setInt(4, qtdCult); // quantidade de operacao
            callStmt.setDate(5, new java.sql.Date(dataOp.getTime())); // quantidade de cultura
            callStmt.setString(6, varPlanta); // variedade da planta

            callStmt.execute();
            connection.commit();
        } finally {
            if(!Objects.isNull(callStmt)) {
                callStmt.close();
            }
        }

    }
}
