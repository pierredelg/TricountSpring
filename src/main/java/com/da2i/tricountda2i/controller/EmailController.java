package com.da2i.tricountda2i.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmailController {

    @Autowired
    private JavaMailSender sender;

    @RequestMapping("/sendemail")
    @ResponseBody
    String home() {
        try {
            sendEmail();
            return "Email Sent!";
        } catch (Exception ex) {
            return "Error in sending email: " + ex;
        }
    }

    private void sendEmail() throws Exception {
        MimeMessage message = sender.createMimeMessage();

        // Enable the multipart flag!
        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        helper.setTo("pierredelgrange@hotmail.fr");
        helper.setText("<html>" +
                "<body>Here is a cat picture! <img src='cid:id101'/>" +
                "<body>" +
                "</html>", true);
        helper.setSubject("Test email");

        ClassPathResource file = new ClassPathResource("logo.png");
        helper.addInline("id101", file);

        sender.send(message);
    }
}