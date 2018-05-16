package controllers;

import BLL.TimeBLL;
import DTO.TimeDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "TimeServlet", urlPatterns = {"/TimeServlet"})
public class TimeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acao = request.getParameter("acao");
        int idTime;
        switch (acao) {
            case "lista":
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.getRequestDispatcher("/listaTimes.jsp").forward(request, response);
                break;
            case "cadastro":
                request.getRequestDispatcher("/novoTime.jsp").forward(request, response);
                break;
            case "alteracao":
                idTime = Integer.parseInt(request.getParameter("idTime"));
                request.setAttribute("time", new TimeBLL().buscaTimePorId(idTime));
                request.getRequestDispatcher("/alterarTime.jsp").forward(request, response);
                break;
            case "remocao":
                idTime = Integer.parseInt(request.getParameter("idTime"));
                TimeBLL bll = new TimeBLL();

                TimeDTO dto = bll.buscaTimePorId(idTime);
                bll.deletaTime(dto);

                request.getRequestDispatcher("/TimeServlet?acao=lista").forward(request, response);
                break;
            default:
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.getRequestDispatcher("/listaTimes.jsp").forward(request, response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nomeJuiz = request.getParameter("nomeJuiz");
        String acao = request.getParameter("acao");
        TimeBLL bll = new TimeBLL();
        switch (acao) {
            case "cadastra":
                String nomeTime = request.getParameter("txtNomeTime");
                TimeDTO dto = new TimeDTO();
                dto.setNome(nomeTime);

                bll.cadastraTime(dto);
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.getRequestDispatcher("/listaTimes.jsp").forward(request, response);
                break;
            case "altera":
                int idTimeAntigo = Integer.parseInt(request.getParameter("idTime"));
                String novoNomeTime = request.getParameter("txtNomeTime");
                int novoSaldoGols = Integer.parseInt(request.getParameter("txtSaldoGolsTime"));

                TimeDTO novDto = new TimeDTO();

                novDto.setId(idTimeAntigo);
                novDto.setNome(novoNomeTime);
                novDto.setSaldoGols(novoSaldoGols);

                bll.alterarTime(novDto);
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.getRequestDispatcher("/listaTimes.jsp").forward(request, response);
                break;

        }
    }

}
