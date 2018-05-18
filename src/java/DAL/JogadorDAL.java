package DAL;

import DTO.JogadorDTO;
import DTO.JuizDTO;
import configurator.DbConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JogadorDAL {

    private Connection conn;

    public JogadorDAL() {
        conn = DbConnector.conectar();
    }

    public JogadorDTO loginJogador(String usuario, String senha) {
        JogadorDTO dto = null;
        try {
            String sql = "SELECT * FROM tbJogadores WHERE login = ? AND senha = ? AND tipoUsuario = 'Jogador'";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, usuario);
            st.setString(2, senha);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                dto = new JogadorDTO();
                dto.setId(rs.getInt("id"));
                dto.setNome(rs.getString("nome"));
                dto.setSaldoGols(rs.getInt("saldoGols"));
                dto.setLogin(rs.getString("login"));
                dto.setSenha(rs.getString("senha"));
                dto.setIdTime(rs.getInt("idTime"));
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return dto;
    }

    public JuizDTO loginJuiz(String usuario, String senha) {
        JuizDTO dto = null;
        try {
            String sql = "SELECT * FROM tbJogadores WHERE login = ? AND senha = ? AND tipoUsuario = 'Juiz'";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, usuario);
            st.setString(2, senha);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                dto = new JuizDTO();
                dto.setId(rs.getInt("id"));
                dto.setNome(rs.getString("nome"));
                dto.setLogin(rs.getString("login"));
                dto.setSenha(rs.getString("senha"));
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return dto;
    }

    public boolean inserirJogador(JogadorDTO dto, String tipoUsuario) {
        boolean retorno;
        try {
            String sql = "INSERT INTO tbJogadores"
                    + "(nome, saldoGols, idTime, login, senha, tipoUsuario) "
                    + "VALUES (?,?,?);";
            PreparedStatement insert = this.conn.prepareStatement(sql);
            insert.setString(1, dto.getNome());
            insert.setInt(2, dto.getSaldoGols());
            insert.setInt(3, dto.getIdTime());
            insert.setString(4, dto.getLogin());
            insert.setString(5, dto.getSenha());
            insert.setString(6, tipoUsuario);

            insert.executeUpdate();
            insert.close();
            retorno = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            retorno = false;
        }
        return retorno;
    }

    public boolean alterarJogador(JogadorDTO dto) {
        boolean retorno;
        try {
            String sql = "UPDATE tbJogadores "
                    + "SET nome = ?, saldoGols = ?, idTime = ?, login = ?, senha = ?"
                    + " WHERE id = ?;";
            PreparedStatement update = conn.prepareStatement(sql);
            update.setString(1, dto.getNome());
            update.setInt(2, dto.getSaldoGols());
            update.setInt(3, dto.getIdTime());
            update.setString(4, dto.getLogin());
            update.setString(5, dto.getSenha());

            update.executeUpdate();
            update.close();
            retorno = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            retorno = false;
        }
        return retorno;
    }

    public boolean excluirJogador(JogadorDTO dto) {
        boolean retorno;
        try {
            String sql = "DELETE FROM tbJogadores WHERE id = ?";
            PreparedStatement delete = conn.prepareStatement(sql);
            delete.setInt(1, dto.getId());

            delete.executeUpdate();
            delete.close();
            retorno = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            retorno = false;
        }
        return retorno;
    }

    public List<JogadorDTO> buscaJogadoresPorTime(int idTime) {
        List<JogadorDTO> lista = new ArrayList<>();
        try {
            String sql = "SELECT * FROM tbJogadores WHERE idTime = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idTime);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                JogadorDTO dto = new JogadorDTO();
                dto.setId(rs.getInt("id"));
                dto.setNome(rs.getString("nome"));
                dto.setSaldoGols(rs.getInt("saldoGols"));
                dto.setLogin(rs.getString("login"));
                dto.setSenha(rs.getString("senha"));
                dto.setIdTime(rs.getInt("idTime"));
                lista.add(dto);
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return lista;
    }
    
    public List<JogadorDTO> buscaTodosJogadores() {
        List<JogadorDTO> lista = new ArrayList<>();
        try {
            String sql = "SELECT * FROM tbJogadores AND tipoUsuario = 'Jogador'";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                JogadorDTO dto = new JogadorDTO();
                dto.setId(rs.getInt("id"));
                dto.setNome(rs.getString("nome"));
                dto.setSaldoGols(rs.getInt("saldoGols"));
                dto.setLogin(rs.getString("login"));
                dto.setSenha(rs.getString("senha"));
                dto.setIdTime(rs.getInt("idTime"));
                lista.add(dto);
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return lista;
    }
    
    public JogadorDTO buscaJogadorPorId(int idJogador) {
        JogadorDTO dto = null;
        try {
            String sql = "SELECT * FROM tbJogadores WHERE id = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idJogador);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                dto = new JogadorDTO();
                dto.setId(rs.getInt("id"));
                dto.setNome(rs.getString("nome"));
                dto.setSaldoGols(rs.getInt("saldoGols"));
                dto.setLogin(rs.getString("login"));
                dto.setSenha(rs.getString("senha"));
                dto.setIdTime(rs.getInt("idTime"));
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return dto;
    }
}
