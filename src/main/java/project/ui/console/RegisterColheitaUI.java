package project.ui.console;

import project.application.controller.RegisterOperationController;
import project.repositories.ColheitaRepository;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class RegisterColheitaUI implements Runnable {
    @Override
    public void run() {
        RegisterOperationController controller = new RegisterOperationController();
        Scanner read = new Scanner(System.in);
        String ipAddress = System.getProperty("database.inet");
        try {
            InetAddress inet = InetAddress.getByName(ipAddress);
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }

        System.out.println("\n=== Registo de uma Operação Colheita ===");

        System.out.println("\nDigite a quantidade de Colheita:");
        int p_quantidade = read.nextInt();
        read.nextLine();
        System.out.println("\nDigite o tipo de unidade:");
        String p_tipoUnidade = read.nextLine();

        System.out.println("\nDigite o dia da operação (DD/MM/YYYY):");
        String p_diaOperacao = read.nextLine();

        String p_tipoOperacao = "Colheita";

        System.out.println("\nDigite o nome da parcela:");
        String p_nomeParcela = read.nextLine().toUpperCase();

        System.out.println("\nDigite o nome da variedade da planta da cultura:");
        String p_variedadePlanta = read.nextLine();

        System.out.println("\nDigite o dia de cultivação da cultura:");
        String p_diaCultivacao = read.nextLine();

        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date diaOp;
        Date diaCult;
        try {
            diaOp = formatter.parse(p_diaOperacao);
            diaCult = formatter.parse(p_diaCultivacao);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        try {
            controller.registerColheita(p_quantidade,p_tipoUnidade, diaOp, p_tipoOperacao, p_nomeParcela, p_variedadePlanta, diaCult);
            System.out.println("Colheita registada com sucesso.");
        } catch (SQLException e) {
           System.out.println(e.getMessage().split("\n")[0]);
        }

    }
}
