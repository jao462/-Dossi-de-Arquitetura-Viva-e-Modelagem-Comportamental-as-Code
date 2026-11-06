workspace "Gestao de Estagios UniSenai" "Arquitetura de referencia" {
    model {
        estudante = person "Estudante"
        empresa = person "Empresa"
        admin = person "Administrador"

        sistema = softwareSystem "Sistema de Gestao de Estagios" {
            web = container "Aplicacao Web" "Interface dos usuarios" "React"
            api = container "API Backend" "Regras de negocio" "Node.js / REST"

            match = component "MatchService" "Calcula compatibilidade" "Node.js"
            vaga = component "VagaService" "Gerencia vagas" "Node.js"
            contrato = component "ContratoService" "Gerencia contratos" "Node.js"

            banco = container "Banco de Dados" "Armazena dados do sistema" "PostgreSQL 16"
        }

        assinatura = softwareSystem "Servico de Assinatura Eletronica"

        estudante -> web "Acessa" "HTTPS"
        empresa -> web "Gerencia vagas" "HTTPS"
        admin -> web "Administra" "HTTPS"
        web -> api "Requisicoes" "HTTP/JSON"
        api -> match "Calcula Match"
        api -> vaga "Consulta vagas"
        api -> contrato "Gerencia contratos"
        match -> banco "Consulta dados" "SQL"
        vaga -> banco "Consulta vagas" "SQL"
        contrato -> banco "Armazena contratos" "SQL"
        contrato -> assinatura "Envia contrato" "HTTPS/REST"
        assinatura -> api "Notifica assinaturas" "Webhook HTTPS"
    }

    views {
        container sistema {
            include *
            autolayout lr
        }

        component sistema.api {
            include *
            autolayout lr
        }
    }
}