package project.repositories;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Objects;

import project.domain.DatabaseConnection;

public class RegaRepository {
	
    public static void registerRega(String idSect, java.util.Date dataOp, int qtd) throws SQLException {

        CallableStatement callStmt = null;
        try {
            Connection connection = DatabaseConnection.getInstance().getConnection();
            callStmt = connection.prepareCall("{ call registarRega(?,?,?}");

            callStmt.setString(1, idSect);
            callStmt.setDate(2, new java.sql.Date(dataOp.getTime()));
            callStmt.setInt(3, qtd);
            callStmt.execute();
            connection.commit();
        } finally {
            if(!Objects.isNull(callStmt)) {
                callStmt.close();
            }
        }

    }
	
    public static void registerFertirrega(String idSect, java.util.Date dataOp, int qtd, int mix) throws SQLException {

        CallableStatement callStmt = null;
        try {
            Connection connection = DatabaseConnection.getInstance().getConnection();
            callStmt = connection.prepareCall("{ call registarFertirrega(?,?,?,?}");

            callStmt.setString(1, idSect);
            callStmt.setDate(2, new java.sql.Date(dataOp.getTime()));
            callStmt.setInt(3, qtd);
			callStmt.setInt(4, mix);
            callStmt.execute();
            connection.commit();
        } finally {
            if(!Objects.isNull(callStmt)) {
                callStmt.close();
            }
        }

    }
}
