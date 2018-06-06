package BLL;

import DAL.JogadorDAL;
import DTO.JogadorDTO;
import DTO.JuizDTO;
import java.util.List;

public class JogadorBLL {

    public JogadorDTO loginJogador(String usuario, String senha) {
        return new JogadorDAL().loginJogador(usuario, senha);
    }

    public JuizDTO loginJuiz(String usuario, String senha) {
        return new JogadorDAL().loginJuiz(usuario, senha);
    }

    public boolean cadastraJogador(String nomeJogador, String loginJogador, String senhaJogador, int idTimeJogador) {
        JogadorDTO dto = new JogadorDTO();
        dto.setNome(nomeJogador);
        dto.setLogin(loginJogador);
        dto.setSenha(senhaJogador);
        dto.setIdTime(idTimeJogador);
        dto.setSaldoGols(0);

        return new JogadorDAL().inserirJogador(dto, "Jogador");
    }

    public boolean alterarJogador(int idJogadorAntigo, String nomeJogador, int saldoGols, String loginJogador, String senhaJogador, int idTimeJogador) {
        JogadorDTO dto = new JogadorDTO();
        dto.setId(idJogadorAntigo);
        dto.setNome(nomeJogador);
        dto.setSaldoGols(saldoGols);
        dto.setLogin(loginJogador);
        dto.setSenha(senhaJogador);
        dto.setIdTime(idTimeJogador);

        return new JogadorDAL().alterarJogador(dto);
    }

    public boolean deletaJogador(JogadorDTO dto) {
        return new JogadorDAL().excluirJogador(dto);
    }

    public List<JogadorDTO> buscarTodosJogadores() {
        return new JogadorDAL().buscaTodosJogadores();
    }

    public JogadorDTO buscaJogadorPorId(int idJogador) {
        return new JogadorDAL().buscaJogadorPorId(idJogador);
    }

    public int contaQuantosJogadores() {
        return new JogadorDAL().contaQuantosJogadores();
    }
}
