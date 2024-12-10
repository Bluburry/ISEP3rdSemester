package project.application.controller;

import project.repositories.ColheitaRepository;
import project.repositories.MondaRepository;
import project.repositories.RegaRepository;
import project.repositories.SemeaduraRepository;
import project.repositories.AplicacaoRepository;

import java.sql.SQLException;
import java.util.Date;

public class RegisterOperationController {
    public void registerColheita(int quantidade, String tipoUni, Date diaOp, String tipoOp, String nomeParcela, String variedade, Date diaCult) throws SQLException {
        ColheitaRepository.registerColheita(quantidade, tipoUni, diaOp, tipoOp, nomeParcela, variedade, diaCult);
    }

    public void registerMonda(String tipoOperacao, int quantidade, String tipoUnidade, Date diaOp, String nomeParcela, String variedadePlanta, Date diaCult) throws SQLException {
        MondaRepository.registerMonda(tipoOperacao,quantidade,tipoUnidade,diaOp,nomeParcela,variedadePlanta, diaCult);
    }

    public void registerAplicacao(String fatorProducao, int qtdFator, Date diaOperacao, String nomeParcela) throws SQLException{
        AplicacaoRepository.registerAplicacao(fatorProducao, qtdFator, diaOperacao, nomeParcela);
    }

    public void registerSemeadura(String tipoOperacao, String parcelaNome, int qtdOp, int qtdCult, Date dataOp, String varPlanta) throws SQLException {
        SemeaduraRepository.registerSemeadura(tipoOperacao, parcelaNome, qtdOp, qtdCult, dataOp, varPlanta);
    }

    public void registerRega(String idSect, Date dataOp, int qtd) throws SQLException {
       RegaRepository.registerRega(idSect, dataOp, qtd);
    }

	public void registarFertirrega(String idSect, Date dataOp, int qtd, int mix) throws SQLException {
       RegaRepository.registerFertirrega(idSect, dataOp, qtd, mix);
	}
}
