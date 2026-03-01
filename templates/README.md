# Instruções para Gerar PDF do Currículo

Este diretório contém templates e instruções para gerar PDFs profissionais do seu currículo em diferentes formatos.

## Opção 1: Pandoc + LaTeX

### Pré-requisitos
1. Instale o Pandoc: https://pandoc.org/installing.html
2. Instale um engine LaTeX:
   - Windows: MikTeX (https://miktex.org/)
   - macOS: MacTeX (https://www.tug.org/mactex/)
   - Linux: TeX Live (`sudo apt-get install texlive-full`)

### Como usar
1. Instale o pacote moderncv:
   ```bash
   # No terminal/prompt de comando
   tlmgr install moderncv
   ```

2. Execute o comando Pandoc:
   ```bash
   pandoc Meu_Perfil_Data_Product/CV_compilado.md -o CV_Rodrigo_Rocha.pdf --pdf-engine=xelatex --template=templates/professional-cv.tex
   ```

### Personalização
- Edite `templates/professional-cv.tex` para alterar cores, fontes ou layout
- Adicione variáveis no cabeçalho do seu markdown para personalizar o template

---

## Opção 2: Typst

### Pré-requisitos
1. Acesse https://typst.app (online) ou instale localmente
2. Para instalação local: https://typst.app/docs/installation/

### Como usar
1. **Online (mais fácil):**
   - Acesse https://typst.app
   - Crie um novo projeto
   - Copie o conteúdo de `templates/modern-cv.typ`
   - Substitua o conteúdo de exemplo pelo seu currículo
   - Exporte como PDF

2. **Local:**
   ```bash
   # Compile o template
   typst compile templates/modern-cv.typ CV_Rodrigo_Rocha.pdf
   ```

### Personalização
- Edite as variáveis no início do arquivo `modern-cv.typ`
- Altere cores, fontes e layout conforme necessário
- O Typst tem syntax mais simples que LaTeX

---

## Opção 3: VS Code + Markdown PDF

### Pré-requisitos
1. VS Code instalado
2. Extensão "Markdown PDF" instalada

### Como usar
1. Abra o VS Code
2. Abra o arquivo `Meu_Perfil_Data_Product/CV_compilado.md`
3. Configure a extensão para usar o CSS customizado:
   - Vá em Settings (Ctrl+,)
   - Procure por "markdown-pdf"
   - Em "Markdown-pdf: Styles", adicione o caminho: `templates/cv-styles.css`
4. Clique com botão direito no arquivo markdown
5. Selecione "Markdown PDF: Export (pdf)"

### Personalização
- Edite `templates/cv-styles.css` para alterar aparência
- Adicione classes CSS customizadas no seu markdown usando `<div class="sua-classe">`

---

## Dicas Gerais

### Para Layout Profissional:
- Use hierarquia clara de títulos (H1, H2, H3)
- Mantenha espaçamento consistente
- Use bullets para listas de responsabilidades
- Inclua links clicáveis para LinkedIn/GitHub
- Considere adicionar uma foto profissional (opcional)

### Para Resultados Melhores:
- **Pandoc/LaTeX:** Melhor qualidade tipográfica, mais customizável
- **Typst:** Mais moderno e fácil de usar que LaTeX
- **VS Code:** Mais rápido para mudanças frequentes

### Teste os Templates:
Cada template está configurado com exemplos do seu currículo. Teste-os e escolha o que mais se adequa ao seu estilo e necessidades.

## Troubleshooting

### Erros Comuns:
- **LaTeX não encontrado:** Instale MikTeX/MacTeX/TeX Live
- **Fontes não funcionam:** Instale as fontes necessárias no sistema
- **Encoding UTF-8:** Certifique-se que os arquivos estão salvos em UTF-8

### Suporte:
- LaTeX: https://tex.stackexchange.com/
- Typst: https://typst.app/docs/
- VS Code: https://code.visualstudio.com/docs