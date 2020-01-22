package com.da2i.tricountda2i.config;


import io.swagger.annotations.License;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.Tag;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {
    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.da2i.tricountda2i.controller"))
                .paths(PathSelectors.any())
                .build()
                .apiInfo(metaData())
                .tags(new Tag("Gestion des utilisateurs", "Permet de récupérer, ajouter, modifier ou supprimer un utilisateur."))
                .tags(new Tag("Gestion des devises", "Permet de récupérer, ajouter, modifier ou supprimer une devise."))
                .tags(new Tag("Gestion des écritures", "Permet de récupérer, ajouter, modifier ou supprimer une écriture."))
                .tags(new Tag("Gestion des événements", "Permet de récupérer, ajouter, modifier ou supprimer un événement."))
                .tags(new Tag("Gestion des participants", "Permet de récupérer, ajouter, modifier ou supprimer un participant."))
                .tags(new Tag("Gestion des types d'écriture", "Permet de récupérer, ajouter, modifier ou supprimer un type d'écriture."));
    }
    private ApiInfo metaData() {
        return new ApiInfoBuilder()
                .title("API Tricount")
                .description("Cette API permet d'accéder aux données de Tricount Da2i")
                .version("1.0.0")
                .license("Apache License Version 2.0")
                .licenseUrl("https://www.apache.org/licenses/LICENSE-2.0.html")
                .contact(new Contact("Pierre Delgrange", "", "pierre.delgrange.etu@univ-lille.fr"))
                .build();
    }

}