require 'rails_helper'

feature 'user creates recipes' do
  scenario 'successfully' do

    recipe = build(:recipe)

    visit root_path

    fill_in 'Nome',                   with: recipe.name
    fill_in 'Cozinha',                with: 'Mineira'
    fill_in 'Tipo',                   with: 'Sobremesa'
    fill_in 'Preferência de comida',  with: 'Laranja'
    fill_in 'Porções',                with: 4
    fill_in 'Tempo de preparo',       with: 90
    select 'Médio',                   from: 'Dificuldade'
    fill_in 'Ingredientes',           with: 'Laranja e Açúcar'
    fill_in 'Modo de preparo',        with: 'Faça a massa e coloque laranjada'

    click_on 'Enviar'

    expect(page).to have_css('h1', text: recipe.name)
    expect(page).to have_content('Mineira')
    expect(page).to have_content('Sobremesa')
    expect(page).to have_content('Laranja')
    expect(page).to have_content(4)
    expect(page).to have_content(90)
    expect(page).to have_content('Médio')
    expect(page).to have_content('Laranja e Açúcar')
    expect(page).to have_content('Faça a massa e coloque laranjada')
  end
end
