package controler;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Restaurante;
import model.Restaurantes;

@WebServlet("/restaurantes.do")
public class RestaurantesServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        ArrayList<Restaurante> restaurantes = new ArrayList<Restaurante>();

        restaurantes.add(new Restaurante(1, "Trattoria do Vini", "./img/trattoria-vini-1.png", 4, "R. Amadeu Gamberini, 283 - São Miguel Paulista, ","CEP: 08010-110","São Paulo - ", "SP,"));
        restaurantes.add(new Restaurante(2, "Circolo Cucina", "./img/restaurante-circolo.png", 5, "AV. iPIRANGA, 344 - Centro Histórico de São Paulo - ","CEP: 01046-926", "São Paulo", "SP,"));
        restaurantes.add(new Restaurante(3, "Terraço Itália", "./img/restaurante-italia.png", 5, "AV. iPIRANGA, 344 - 41° andar - república","CEP: 1046-010", "São Paulo -", "SP,"));
        
        Restaurantes lista = new Restaurantes();
        lista.listaRestaurantes = restaurantes;
        
        //request.setAttribute("restaurantes", restaurantes);
        request.setAttribute("teste", "ola mundo");
        
        //request.getSession().setAttribute("restaurantes", restaurantes);
        //request.getSession().setAttribute("restaurante", new Restaurante(1, "Trattoria do Vini", "./img/trattoria-vini-1.jpg", 5, "r.Amadeu Gamberini,283", "08010-110", "São Paulo", "SP"));
        request.getSession().setAttribute("restaurantes", lista);
        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/restaurantes.jsp");
        dispatcher.forward(request, response);
        //RequestDispatcher dispatcher2 = request.getRequestDispatcher("/restaurantes.jsp");
        //dispatcher2.forward(request, response);
    }
}
