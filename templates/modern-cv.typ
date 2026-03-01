#let template(
  name: "Rodrigo Albuquerque da Rocha",
  title: "Especialista em Produto de Dados",
  location: "Florianópolis, Santa Catarina, Brasil",
  phone: "+55 41 988582931",
  email: "rodrigo.adr@gmail.com",
  linkedin: "rodrocha",
  github: "rodrigoadr",
  body
) = {
  // Set document metadata
  set document(title: name + " - CV")
  
  // Set page configuration
  set page(
    paper: "a4",
    margin: (left: 2cm, right: 2cm, top: 2cm, bottom: 2cm),
    footer: align(center, text(8pt, fill: gray)[#name - CV - #datetime.today().display("[month repr:long] [year]")])
  )
  
  // Set text properties
  set text(font: "Roboto", size: 10pt, fill: black)
  show heading.where(level: 1): it => [
    #set text(size: 16pt, weight: "bold", fill: rgb("#2d4157"))
    #block(below: 0.8em, above: 1.2em)[
      #it.body
      #line(length: 100%, stroke: 1pt + rgb("#2d4157"))
    ]
  ]
  
  show heading.where(level: 2): it => [
    #set text(size: 14pt, weight: "bold", fill: rgb("#2d4157"))
    #block(below: 0.6em, above: 1em)[#it.body]
  ]
  
  show heading.where(level: 3): it => [
    #set text(size: 12pt, weight: "bold", fill: rgb("#4a5568"))
    #block(below: 0.4em, above: 0.8em)[#it.body]
  ]
  
  // Header with name and contact info
  align(center)[
    #block[
      #text(size: 24pt, weight: "bold", fill: rgb("#2d4157"))[#name]
      #linebreak()
      #text(size: 14pt, style: "italic", fill: rgb("#4a5568"))[#title]
      #linebreak()
      #text(size: 10pt, fill: rgb("#666"))[#location]
    ]
  ]
  
  // Contact information
  align(center)[
    #grid(
      columns: 4,
      gutter: 1em,
      align(center)[📱 #phone],
      align(center)[✉️ #email],
      align(center)[💼 LinkedIn: #linkedin],
      align(center)[🐙 GitHub: #github]
    )
  ]
  
  v(1em)
  line(length: 100%, stroke: 0.5pt + gray)
  v(1em)
  
  // Body content
  body
}

// Usage example - replace with your CV content
#show: template

= Resumo Executivo

Especialista em dados com mais de 20 anos de experiência, liderando projetos de BI, IA, engenharia e modernização de dados em grandes empresas nacionais e multinacionais. Tenho histórico comprovado em migração de mais de 20TB de dados em tempo recorde utilizando IA, automação, Google Cloud, Dataproc e gestão de projetos ágeis.

Sou reconhecido pela capacidade de transformar desafios complexos em soluções escaláveis, promovendo cultura data-driven, comunicação clara entre áreas técnicas e de negócio, negociação com stakeholders e liderança de times multidisciplinares e multiculturais.

= Competências Principais

- *Machine Learning & IA:* TensorFlow, Scikit-learn, PyTorch, Modelos Preditivos, IA Generativa
- *Cloud & Big Data:* Google Cloud Platform (GCP), BigQuery, Dataproc, Apache Airflow, Spark
- *Business Intelligence:* Tableau, Looker, Power BI, QlikView, Modelagem Dimensional
- *Engenharia de Dados:* ETL/ELT, Data Warehousing, DataOps, MLOps, Docker, Kubernetes
- *Gestão & Liderança:* Projetos Ágeis, Times Multidisciplinares, Stakeholder Management

= Experiência Profissional

== Grupo Boticário _(Total: 6 anos)_

=== Especialista em Produto de Dados
*Março 2025 – Presente* | São José dos Pinhais, Paraná, Brasil

- Define políticas, padronização e governança de dados para garantir integridade, escalabilidade e valor de negócio
- Conecta áreas técnicas e estratégicas, transformando dados em produtos e insights através de pipelines e dashboards
- Conduz projetos de migração, modernização de dados e implementação de práticas DataOps/MLOps
- Aplica IA generativa e modelos preditivos para acelerar tomada de decisão
- Atua como mentor em dados e IA, promovendo cultura data-driven

=== Especialista de Domínio
*Abril 2023 – Maio 2025*

- Democratizou acesso aos dados, definindo políticas e desenvolvendo regras de negócio
- Manteve padronização para consumo por franqueados via Tableau e Looker
- Protagonizou migração de dashboards do QlikView para BigQuery

=== Especialista em Tecnologia de Negócios
*Novembro 2019 – Abril 2023* | Remoto

- Responsável por inteligência de negócios e soluções analíticas
- Papel crucial em migrações tecnológicas de alta demanda
- Interação direta com centenas de franqueados, otimizando processos
- Desenvolveu modelo LLM para classificar incidentes reportados

== BRF _(Total: 2 anos e 10 meses)_

=== Analista de Gestão
*Janeiro 2019 – Novembro 2019*

- Product Owner de projetos de Business Intelligence
- Implementou conceitos de gerenciamento por diretrizes (Falconi)
- Coordenou desenvolvimento contínuo de produtos BI

=== Analista de Analytics de TI
*Fevereiro 2017 – Dezembro 2018* | Curitiba, Paraná

- Membro da equipe corporativa de engenharia de BI e analytics
- Desenvolveu fluxos no SAP BW/HANA para Tableau e Power BI
- *Automatizou cálculo de resultados para 100.000+ funcionários*
- Forneceu indicadores para mercados internacionais (Turquia, Dubai, Viena)

= Formação Acadêmica

#table(
  columns: 3,
  stroke: none,
  [*Período*], [*Curso*], [*Instituição*],
  [2024-2025], [MBA em IA e Machine Learning], [Universidade Cruzeiro do Sul],
  [2014-2015], [MBA em Business Intelligence], [Universidade Positivo],
  [2008-2012], [Tecnologia em Análise e Desenvolvimento], [UFPR],
  [2005-2007], [Ciência da Computação (Incompleto)], [UFPR],
  [2002-2003], [Técnico em Informática], [UFPR]
)

= Certificações

- Agile Leadership Fundamentals
- BigQuery for Machine Learning
- People & Negotiation Foundation

= Idiomas

- *Português:* Nativo
- *Inglês:* Intermediário/Avançado
- *Espanhol:* Básico