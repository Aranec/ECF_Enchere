package fr.afpa.javaee.auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Ajouter les importations nécessaires pour envoyer des e-mails
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@WebServlet("/MotDePasseOublie")
public class MotDePasseOublieServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");

        // Envoyer un e-mail à l'utilisateur avec les instructions de réinitialisation du mot de passe
        try {
            sendEmail(email);
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        // Rediriger l'utilisateur vers une page indiquant qu'un e-mail a été envoyé
        response.sendRedirect("emailEnvoye.jsp");
    }

    private void sendEmail(String to) throws AddressException, MessagingException {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // Remplacer par vos identifiants
        final String from = "DevMazzitelli@gmail.com";
        final String password = "Benjamin0098*(";

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(from, password);
            }
        });

        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(from));
        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
        msg.setSubject("Réinitialisation du mot de passe");
        msg.setText("Pour réinitialiser votre mot de passe, veuillez suivre les instructions suivantes: ...");

        Transport.send(msg);
    }
}
