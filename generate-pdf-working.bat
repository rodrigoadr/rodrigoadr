@echo off
echo Gerando CV Rodrigo Rocha - Versoes PT e EN...
echo.

REM Usa o Pandoc do local encontrado
set "PANDOC_EXE=C:\Program Files\Pandoc\pandoc.exe"

if not exist "%PANDOC_EXE%" (
    echo ERRO: Pandoc nao encontrado em: %PANDOC_EXE%
    pause
    exit /b 1
)

echo Usando Pandoc: %PANDOC_EXE%
echo.

REM Gera HTML versao portuguesa
echo Passo 1: Gerando versao portuguesa...
"%PANDOC_EXE%" "Meu_Perfil_Data_Product\CV_compilado.md" -o "CV_Rodrigo_Rocha_PT.html" --css="templates/cv-styles.css" --standalone

if %errorlevel% neq 0 (
    echo ERRO: Falha ao gerar HTML PT
    pause
    exit /b 1
)

echo ✓ CV PT gerado: CV_Rodrigo_Rocha_PT.html

REM Gera HTML versao inglesa
echo.
echo Passo 2: Gerando versao inglesa...
"%PANDOC_EXE%" "CV_Rodrigo_Rocha_EN.md" -o "CV_Rodrigo_Rocha_EN.html" --css="templates/cv-styles.css" --standalone

if %errorlevel% neq 0 (
    echo ERRO: Falha ao gerar HTML EN
    pause
    exit /b 1
)

echo ✓ CV EN gerado: CV_Rodrigo_Rocha_EN.html

REM Tenta gerar PDFs
echo.
echo Passo 3: Tentando gerar PDFs...
"%PANDOC_EXE%" "Meu_Perfil_Data_Product\CV_compilado.md" -o "CV_Rodrigo_Rocha_PT.pdf" --css="templates/cv-styles.css"
"%PANDOC_EXE%" "CV_Rodrigo_Rocha_EN.md" -o "CV_Rodrigo_Rocha_EN.pdf" --css="templates/cv-styles.css"

echo.
echo ✓ Ambas as versoes HTML geradas com sucesso!
echo.
echo ARQUIVOS FINAIS:
echo - CV_Rodrigo_Rocha_PT.html (Portugues)
echo - CV_Rodrigo_Rocha_EN.html (Ingles)
echo.
echo PARA PDF: Abra os arquivos HTML no navegador e use Ctrl+P
echo.
echo Abrindo versao portuguesa...
start CV_Rodrigo_Rocha_PT.html

pause