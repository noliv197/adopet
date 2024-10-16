require 'rails_helper'

describe 'User visit sponsors page' do
    context 'and sees page content' do
        before do
            visit root_path
        end

        scenario 'in multiple languages' do
            click_on I18n.t('nav.sponsors')

            I18n.available_locales.each do |locale|
                expect(page).to have_link(I18n.t('nav.home'), href: root_path)
                expect(page).to have_link(I18n.t('nav.about'), href: about_path)
                expect(page).to have_link(I18n.t('nav.adopt'), href: animals_path)
                expect(page).to have_link(I18n.t('nav.support'), href: support_path)
                expect(page).to have_link(I18n.t('nav.sponsors'), href: sponsors_path)
            end
    
        end

        scenario 'with no sponsors' do
            click_on I18n.t('nav.sponsors')

            expect(page).not_to have_content I18n.t('sponsors.index.join_partners')
            expect(page).to have_content I18n.t('sponsors.index.no_partners')
            expect(page).not_to have_css(".card-group")
        end

        scenario 'with sponsors' do
            img = Rails.root.join('spec/support/test.png')
            sponsor = FactoryBot.create(:sponsor)
            sponsor.image.attach(
                io: img.open,
                filename: 'test.png',
                content_type: 'image/png'
            )
            click_on I18n.t('nav.sponsors')

            expect(page).to have_content I18n.t('sponsors.index.main')
            expect(page).to have_content I18n.t('sponsors.index.join_partners')
            expect(page).to have_content sponsor.name
            expect(page).to have_content sponsor.about
            expect(page).to have_css("img[src*='test.png']")
        end

    end
  
end