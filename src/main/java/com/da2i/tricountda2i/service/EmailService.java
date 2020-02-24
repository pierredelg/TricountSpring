package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Utilisateur;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.mail.AuthenticationFailedException;
import javax.mail.internet.MimeMessage;
import java.util.HashMap;
import java.util.Map;

@Service
public class EmailService {

    Logger logger = LoggerFactory.getLogger(EmailService.class);

    @Autowired
    private JavaMailSender sender;

    @Autowired
    private Configuration freemarkerConfig;

    public void sendWelcomeEmail(Utilisateur utilisateur){

        MimeMessage message = sender.createMimeMessage();
        try {

            MimeMessageHelper helper = new MimeMessageHelper(message, true);

            freemarkerConfig.setClassForTemplateLoading(this.getClass(), "/templates/");

            Template template = freemarkerConfig.getTemplate("welcomeMail.html");
            Map<String, Object> model = new HashMap<>();
            model.put("nom", utilisateur.getNom());

            String text = FreeMarkerTemplateUtils.processTemplateIntoString(template, model);

            helper.setTo(utilisateur.getEmail());
            helper.setText(text, true);
            helper.addInline("header", new ClassPathResource("headerLogo.png"));
            helper.addInline("iphone", new ClassPathResource("iphone-fr.png"));
            helper.setSubject("Bienvenue sur Tricount DA2I");
        }catch (Exception e){
            logger.error("ENVOI EMAIL IMPOSSIBLE : ADRESSE= "+ utilisateur.getEmail());
        }
        try {
            sender.send(message);
            logger.info("ENVOI EMAIL: ADRESSE= "+ utilisateur.getEmail());
        }catch (Exception e){
            logger.info("ENVOI EMAIL IMPOSSIBLE : ADRESSE= "+ utilisateur.getEmail());
        }
    }
}
