package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Paciente;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/PacienteServlet")
public class PacienteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;	
	
    private List<Paciente> listaPacientes = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String edadStr = request.getParameter("edad");
        String dni = request.getParameter("dni");
        String sintomas = request.getParameter("sintomas");

        if (nombre == null || nombre.isEmpty() ||
            apellido == null || apellido.isEmpty() ||
            edadStr == null || edadStr.isEmpty() ||
            dni == null || dni.isEmpty()) {

            request.setAttribute("error", "Todos los campos son obligatorios");
            request.getRequestDispatcher("/view/registro.jsp").forward(request, response);
            return;
        }

        int edad;
        try {
            edad = Integer.parseInt(edadStr);
        } catch (Exception e) {
            request.setAttribute("error", "Edad inválida");
            request.getRequestDispatcher("/view/registro.jsp").forward(request, response);
            return;
        }

        if (!dni.matches("\\d{8}")) {
            request.setAttribute("error", "DNI inválido");
            request.getRequestDispatcher("/view/registro.jsp").forward(request, response);
            return;
        }

        Paciente p = new Paciente(nombre, apellido, edad, dni, sintomas);
        listaPacientes.add(p);

        request.setAttribute("paciente", p);
        request.setAttribute("lista", listaPacientes);
        request.setAttribute("mensaje", "Paciente registrado correctamente");
        request.setAttribute("total", listaPacientes.size());

        request.getRequestDispatcher("/view/resultado.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("lista", listaPacientes);
        request.setAttribute("total", listaPacientes.size());

        request.getRequestDispatcher("/view/resultado.jsp").forward(request, response);
    }
}