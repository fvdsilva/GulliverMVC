package model;

public class Restaurante {
  private int id;
  private String titulo;
  private String descricao;
  private String imagem;
  private double avaliacao;
  private String endereco;
  private String cep;
  private String cidade;
  private String estado;

  public Restaurante() {
  }

  public Restaurante(
          int id,
          String titulo,
        String imagem,
          double avaliacao,
          String endereco,
          String cep,
          String cidade,
          String estado
  ) {
    this.id = id;
    this.titulo = titulo;
   this.imagem = imagem;
    this.avaliacao = avaliacao;
    this.endereco = endereco;
    this.cep = cep;
    this.cidade = cidade;
    this.estado = estado;
  }
  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getTitulo() {
    return titulo;
  }

  public void setTitulo(String titulo) {
    this.titulo = titulo;
  }

  public String getDescricao() {
    return descricao;
  }

  public void setDescricao(String descricao) {
    this.descricao = descricao;
  }

  public String getImagem() {
    return imagem;
  }

  public void setImagem(String imagem) {
    this.imagem = imagem;
  }

  public double getAvaliacao() {
    return avaliacao;
  }

  public void setAvaliacao(double avaliacao) {
    this.avaliacao = avaliacao;
  }

  public String getEndereco() {
    return endereco;
  }

  public void setEndereco(String endereco) {
    this.endereco = endereco;
  }

  public String getCep() {
    return cep;
  }

  public void setCep(String cep) {
    this.cep = cep;
  }

  public String getCidade() {
    return cidade;
  }

  public void setCidade(String cidade) {
    this.cidade = cidade;
  }

  public String getEstado() {
    return estado;
  }

  public void setEstado(String estado) {
    this.estado = estado;
  }
}