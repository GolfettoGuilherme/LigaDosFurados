package DAL;

import DTO.TimeDTO;
import configurator.DbConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TimeDAL {

    private Connection conn;

    public TimeDAL() {
        conn = DbConnector.conectar();
    }

    public boolean inserirTime(TimeDTO dto) {
        boolean retorno;
        try {
            String sql = "INSERT INTO tbTimes(nome, saldoGols) VALUES (?, 0);";

            PreparedStatement insert = this.conn.prepareStatement(sql);
            insert.setString(1, dto.getNome());

            insert.executeUpdate();
            insert.close();
            retorno = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            retorno = false;
        }
        return retorno;
    }

    public boolean alterarTime(TimeDTO dto) {
        boolean retorno;
        try {
            String sql = "UPDATE tbTimes SET nome = ?, saldoGols = ? WHERE id = ?;";

            PreparedStatement update = this.conn.prepareStatement(sql);
            update.setString(1, dto.getNome());
            update.setInt(2, dto.getSaldoGols());
            update.setInt(3, dto.getId());

            update.executeUpdate();
            update.close();
            retorno = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            retorno = false;
        }
        return retorno;
    }

    public boolean ajustarSaldoGols(TimeDTO dto) {
        boolean retorno;
        try {
            String sql = "UPDATE tbTimes SET saldoGols = ? WHERE id = ?;";

            PreparedStatement update = this.conn.prepareStatement(sql);
            update.setInt(1, dto.getSaldoGols());
            update.setInt(2, dto.getId());

            update.executeUpdate();
            update.close();
            retorno = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            retorno = false;
        }
        return retorno;
    }

    public boolean excluirTime(TimeDTO dto) {
        boolean retorno;
        try {
            String sql = "DELETE FROM tbTimes WHERE id = ?";
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

    public List<TimeDTO> buscarTimes() {
        List<TimeDTO> lista = new ArrayList<>();
        try {
            String sql = "SELECT * FROM tbTimes";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                TimeDTO dto = new TimeDTO();
                dto.setId(rs.getInt("id"));
                dto.setNome(rs.getString("nome"));
                dto.setSaldoGols(rs.getInt("saldoGols"));
                dto.setListaJogadores(new JogadorDAL().buscaJogadoresPorTime(dto.getId()));
                lista.add(dto);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return lista;
    }

    public TimeDTO buscarTimePorId(int idTime) {
        TimeDTO dto = new TimeDTO();
        try {
            String sql = "SELECT * FROM tbTimes WHERE id = ?";

            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, idTime);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                dto.setId(rs.getInt("id"));
                dto.setNome(rs.getString("nome"));
                dto.setSaldoGols(rs.getInt("saldoGols"));
                dto.setListaJogadores(new JogadorDAL().buscaJogadoresPorTime(dto.getId()));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return dto;
    }

}
