package controllers;

import BLL.JogadorBLL;
import BLL.PartidaBLL;
import BLL.TimeBLL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PartidaServlet", urlPatterns = {"/PartidaServlet"})
public class PartidaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acao = request.getParameter("acao");
        switch (acao) {
            case "lista":
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.setAttribute("listaPartidas", new PartidaBLL().buscaPartidas());
                request.getRequestDispatcher("/listaPartidas.jsp").forward(request, response);
                break;
            case "cadastro":
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.getRequestDispatcher("/novaPartida.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.setAttribute("listaPartidas", new PartidaBLL().buscaPartidas());
                request.getRequestDispatcher("/listaPartidas.jsp").forward(request, response);
                break;
        }
    }

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acao = request.getParameter("acao");
        switch (acao) {
            case "cadastra":
                int idTimeCasa = Integer.parseInt(request.getParameter("idTimeCasa"));
                int saldoGolsTimeCasa = Integer.parseInt(request.getParameter("txtSaldoGolsTimeCasa"));

                int idTimeAdversario = Integer.parseInt(request.getParameter("idTimeAdversario"));
                int saldoGolsTimeAdversario = Integer.parseInt(request.getParameter("txtSaldoGolsTimeAdversario"));

                new PartidaBLL().registraPartida(idTimeCasa, saldoGolsTimeCasa, idTimeAdversario, saldoGolsTimeAdversario);

                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.setAttribute("listaPartidas", new PartidaBLL().buscaPartidas());
                request.getRequestDispatcher("/listaPartidas.jsp").forward(request, response);
                break;
        }
    }

}
