require 'rails_helper'

describe 'User visit home page' do
    it 'and sees page content in multiple languages' do
      
      visit root_path
  
      I18n.available_locales.each do |locale|
        expect(page).to have_content I18n.t('home.index.welcome')
        expect(page).to have_content I18n.t('home.index.main')
        expect(page).to have_link(I18n.t('nav.home'), href: root_path)
        expect(page).to have_link(I18n.t('nav.about'), href: about_path)
        expect(page).to have_link(I18n.t('nav.adopt'), href: animals_path)
        expect(page).to have_link(I18n.t('nav.support'), href: support_path)
        expect(page).to have_link(I18n.t('nav.sponsors'), href: sponsors_path)
      end

    end
    context ', clicks on' do 
        before do
            visit root_path
        end

        scenario 'home link and is redirect succesfully' do
          within 'nav' do
            click_on I18n.t('nav.home')
          end
          expect(current_path).to eq(root_path)
          expect(page.status_code).to eq(200)
        end

        scenario 'adopt link and is redirect succesfully' do
          within 'nav' do
            click_on I18n.t('nav.adopt')
          end
          expect(current_path).to eq(animals_path)
          expect(page.status_code).to eq(200)
        end

        scenario 'about link and is redirect succesfully' do
          within 'nav' do
            click_on I18n.t('nav.about')
          end
          expect(current_path).to eq(about_path)
          expect(page.status_code).to eq(200)
        end

        scenario 'support link and is redirect succesfully' do
          within 'nav' do
            click_on I18n.t('nav.support')
          end
          expect(current_path).to eq(support_path)
          expect(page.status_code).to eq(200)
        end

        scenario 'sponsors link and is redirect succesfully' do
          within 'nav' do
            click_on I18n.t('nav.sponsors')
          end
          expect(current_path).to eq(sponsors_path)
          expect(page.status_code).to eq(200)
        end
    end
  
  end
