# frozen_string_literal: true

#Intância das classes e executado antes do cenário
Before do
  current_window.maximize
  @cadastro = Cadastro.new
  @login = Login.new
  @buscar = Buscar.new
  @finalizar = Finalizar.new
end

#Tira a imagem com o nome do cenário
After do |scenario|
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome_cenario = nome_cenario.gsub(' ', '_').downcase!
  screenshot = "data/reports/log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
end

#Gera o Report Builder
at_exit do
  ReportBuilder.configure do |config|
      config.input_path = "data/report.json"
      config.report_path = "data/cucumber_web_report"
      config.report_types = [:html]
      config.color = "indigo"
      config.report_tabs = %w[Overview Features Scenarios Errors]
      config.report_title = "Automação de Testes - Report"
      config.compress_images = true
      config.additional_info = { "Projeto" => "Trilha 3", "Canal/Ambiente" => "Teste", "QA" => "Mariana" }
    end
  ReportBuilder.build_report
end