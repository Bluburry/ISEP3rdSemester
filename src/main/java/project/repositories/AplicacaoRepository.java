package project.repositories;

import project.domain.DatabaseConnection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.Objects;

public class AplicacaoRepository {

    public static void registerAplicacao(String fatorProducao, int qtdFator, Date diaOperacao, String nomeParcela) throws SQLException {

        CallableStatement callStmt = null;
        try {
            Connection connection = DatabaseConnection.getInstance().getConnection();
            callStmt = connection.prepareCall("{ call registerAplicacaoFator(?,?,?,?) }");

            callStmt.setString(1, fatorProducao);                                  //Fator producao (String)
            callStmt.setInt(2, qtdFator);                                          //Quantidade fator (int)
            callStmt.setDate(3, new java.sql.Date(diaOperacao.getTime()));         //Data operação (Date)
            callStmt.setString(4, nomeParcela);                                    //Nome parcela (String)

            callStmt.execute();
            connection.commit();
        } finally {
            if(!Objects.isNull(callStmt)) {
                callStmt.close();
            }
        }

    }
}
