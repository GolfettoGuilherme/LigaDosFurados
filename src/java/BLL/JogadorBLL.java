package BLL;

import DAL.JogadorDAL;
import DTO.JogadorDTO;
import DTO.JuizDTO;

public class JogadorBLL {

    public JogadorDTO loginJogador(String usuario, String senha) {
        return new JogadorDAL().loginJogador(usuario, senha);
    }

    public JuizDTO loginJuiz(String usuario, String senha) {
        return new JogadorDAL().loginJuiz(usuario, senha);
    }

}
