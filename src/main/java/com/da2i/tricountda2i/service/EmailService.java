package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Utilisateur;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.mail.internet.MimeMessage;
import java.util.HashMap;
import java.util.Map;

@Service
public class EmailService {
    @Autowired
    private JavaMailSender sender;

    @Autowired
    private Configuration freemarkerConfig;

    public void sendWelcomeEmail(Utilisateur utilisateur) throws Exception {

        MimeMessage message = sender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        freemarkerConfig.setClassForTemplateLoading(this.getClass(), "/templates/");

        Template template = freemarkerConfig.getTemplate("welcomeMail.ftlh");
        Map<String, Object> model = new HashMap<>();
        model.put("nom", utilisateur.getNom());

        String text = FreeMarkerTemplateUtils.processTemplateIntoString(template, model);

        helper.setTo(utilisateur.getEmail());
        helper.setText(text,true);
        helper.addInline("header", new ClassPathResource("headerLogo.png"));
        helper.addInline("iphone", new ClassPathResource("iphone-fr.png"));
        helper.setSubject("Bienvenue sur Tricount DA2I");

        sender.send(message);
    }
}
