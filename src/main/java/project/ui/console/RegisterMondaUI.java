package project.ui.console;

import project.application.controller.RegisterOperationController;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class RegisterMondaUI implements Runnable {

    private RegisterOperationController controller = new RegisterOperationController();
    private Scanner read = new Scanner(System.in);
    private String ipAddress = System.getProperty("database.inet");

    @Override
    public void run() {
        try {
            InetAddress inet = InetAddress.getByName(ipAddress);
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }

        System.out.println("\n=== Registo de uma Operação Monda ===");

        String tipoOp = "Monda";

        System.out.println("\nDigite a quantidade de Monda:");
        int quantidade = read.nextInt();
        read.nextLine();
        System.out.println("\nDigite o tipo de unidade:");
        String tipoUni = read.nextLine();

        System.out.println("\nDigite o dia da operação (DD/MM/YYYY):");
        String diaOperacao = read.nextLine();

        System.out.println("\nDigite o nome da parcela:");
        String nomeParcela = read.nextLine().toUpperCase();

        System.out.println("\nDigite o nome da variedade da planta da cultura:");
        String variedade = read.nextLine();

        System.out.println("\nDigite o dia de cultivação da cultura:");
        String diaCultivacao = read.nextLine();

        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date diaOp;
        Date diaCult;

        try {
            diaOp = formatter.parse(diaOperacao);
            diaCult = formatter.parse(diaCultivacao);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        try {
            controller.registerMonda(tipoOp, quantidade,tipoUni, diaOp, nomeParcela, variedade, diaCult);
            System.out.println("Operação Monda registada com sucesso.");
        } catch (SQLException e) {
            System.out.println("Tentativa de registar uma operação Monda com insucesso.");
            System.out.println(e.getMessage().split("\n")[0]);
        }
    }

}
