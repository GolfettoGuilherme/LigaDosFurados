package controllers;

import BLL.JogadorBLL;
import BLL.TimeBLL;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RelatorioServlet", urlPatterns = {"/RelatorioServlet"})
public class RelatorioServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
        request.setAttribute("listaJogadores", new JogadorBLL().buscarTodosJogadores());
        request.getRequestDispatcher("/listaRelatorios.jsp").forward(request, response);
    }

}
