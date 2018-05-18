package controllers;

import BLL.JogadorBLL;
import BLL.TimeBLL;
import DTO.JogadorDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "JogadorServlet", urlPatterns = {"/JogadorServlet"})
public class JogadorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acao = request.getParameter("acao");
        int idJogador;
        switch (acao) {
            case "lista":
                request.setAttribute("listaJogadores", new JogadorBLL().buscarTodosJogadores());
                request.getRequestDispatcher("/listaJogadores.jsp").forward(request, response);
                break;
            case "cadastro":
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.getRequestDispatcher("/novoJogador.jsp").forward(request, response);
                break;
            case "alteracao":
                idJogador = Integer.parseInt(request.getParameter("idJogador"));
                request.setAttribute("jogador", new JogadorBLL().buscaJogadorPorId(idJogador));
                request.setAttribute("listaTimes", new TimeBLL().buscaTimes());
                request.getRequestDispatcher("/alterarJogador.jsp").forward(request, response);
                break;
            case "remocao":
                idJogador = Integer.parseInt(request.getParameter("idJogador"));
                JogadorBLL bll = new JogadorBLL();

                JogadorDTO dto = bll.buscaJogadorPorId(idJogador);
                bll.deletaJogador(dto);

                request.getRequestDispatcher("/JogadorServlet").forward(request, response);
                break;
            default:
                request.setAttribute("lisstaJogadores", new JogadorBLL().buscarTodosJogadores());
                request.getRequestDispatcher("/listaJogadores.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acao = request.getParameter("acao");
        JogadorBLL bll = new JogadorBLL();
        switch (acao) {
            case "cadastra":
                String nomeJogador = request.getParameter("txtNomeJogador");
                String loginJogador = request.getParameter("txtLoginJogador");
                String senhaJogador = request.getParameter("txtSenhaJogador");
                int idTimeJogador = Integer.parseInt(request.getParameter("timeJogadorId"));

                bll.cadastraJogador(nomeJogador, loginJogador, senhaJogador, idTimeJogador);
                request.setAttribute("listaJogadores", new JogadorBLL().buscarTodosJogadores());
                request.getRequestDispatcher("/listaJogadores.jsp").forward(request, response);
                break;
            case "altera":
                int idJogadorAntigo = Integer.parseInt(request.getParameter("idJogador"));

                String nomeJogadorNovo = request.getParameter("txtNomeJogador");
                int saldoGolsJogadorNovo = Integer.parseInt(request.getParameter("txtSaldoGolsJogados"));
                String loginJogadorNovo = request.getParameter("txtLoginJogador");
                String senhaJogadorNovo = request.getParameter("txtSenhaJogador");
                int idTimeJogadorNovo = Integer.parseInt(request.getParameter("timeJogadorId"));

                bll.alterarJogador(idJogadorAntigo, nomeJogadorNovo, saldoGolsJogadorNovo, loginJogadorNovo, senhaJogadorNovo, idTimeJogadorNovo);
                request.setAttribute("listaJogadores", new JogadorBLL().buscarTodosJogadores());
                request.getRequestDispatcher("/listaJogadores.jsp").forward(request, response);
                break;
        }
    }

}
