package DTO;

public class JogadorDTO {
    
    private int id;
    private String nome;
    private int saldoGols;
    private String login;
    private String senha;
    private int idTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getSaldoGols() {
        return saldoGols;
    }

    public void setSaldoGols(int saldoGols) {
        this.saldoGols = saldoGols;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getIdTime() {
        return idTime;
    }

    public void setIdTime(int idTime) {
        this.idTime = idTime;
    }
    
    
    
}
