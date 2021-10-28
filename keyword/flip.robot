*** Settings ***
Documentation           Quipper Technical Test
Resource                ${EXECDIR}/common/config.robot
Resource                ${EXECDIR}/common/keyword/common_keyword.robot
#Resource                ${EXECDIR}/variable/web/shipper_bos_web/account/qasir_login.robot
Resource                ${EXECDIR}/common/keyword/web.robot

*** Variables ***
##Login page
#${txt_username}=                    id:user-name
#${txt_password}=                    id:password
#${btn_login}=                       id:login-button
#${warning_login}=                   xpath=//div[@class='error-message-container error']
#
##dashboard page
#${dashboard_page}=                          id:inventory_container
#${btn_add_to_chart_labs_bike_light}=        id:add-to-cart-sauce-labs-bike-light
#${btn_add_to_chart_labs_backpack}=          id:add-to-cart-sauce-labs-backpack
#${btn_add_to_chart_labs_bolt_tshirt}=       id:add-to-cart-sauce-labs-bolt-t-shirt
#${btn_add_to_chart_labs_fleece_jacket}=     id:add-to-cart-sauce-labs-fleece-jacket
#${btn_trolly}                               xpath=//a[@class='shopping_cart_link']
#${btn_filter}                               xpath=//select[@class='product_sort_container']
#${select_filter_high_price}                 xpath=//option[@value='hilo'][contains(text(),'Price (high to low)')]
#${select_filter_low_price}                  xpath=//option[@value='lohi'][contains(text(),'Price (low to high)')]
#${select_filter_descending}                 xpath=//option[@value='za'][contains(text(),'Name (Z to A)')]
#${select_filter_ascending}                  xpath=//option[@value='az'][contains(text(),'Name (A to Z)')]
#
##sidebar dashboard
#${btn_sidebar}                              id:react-burger-menu-btn
#${btn_logout}                               id:logout_sidebar_link
#${btn_all_items}                            id:inventory_sidebar_link
#${btn_reset_app_state}                      id:reset_sidebar_link
#${btn_about}                                id:about_sidebar_link
#${btn_close}                                id:react-burger-cross-btn
#
##your cart page
#${cart_page}=                               id:contents_wrapper
#${btn_checkout}=                            id:checkout
#${btn_continue_shoppung}=                   id:continue-shopping
#${btn_remove_labs_bike_light}=              id:remove-sauce-labs-bike-light
#${btn_remove_labs_backpack}=                id:remove-sauce-labs-backpack
#${btn_remove_labs_bolt_tshirt}              id:remove-sauce-labs-bolt-t-shirt
#
##checkout page
#${checkout_page}=                   id:checkout_info_container
#${txt_first_name}=                  id:first-name
#${txt_last_name}=                   id:last-name
#${txt_zip_code}=                    id:postal-code
#${btn_continue}=                    id:continue
#${btn_cancel}=                      id:cancel
#${warning_checkout}=                xpath=//div[@class='error-message-container error']
#
##checkout overview page
#${checkout_overview_page}           xpath=//span[@class='title'][contains(text(),'Checkout: Overview')]
#${btn_finish}=                      id:finish
#
##checkout complete page
#${checkout_complete_page}           id:checkout_complete_container

#bantuan
${btn_bantuan}                              xpath=//ul[@class='nav pull-left']//a[.='Bantuan']
${lbl_pusat_bantuan}=                       xpath=//span[@aria-hidden='true'][contains(text(),'Pusat Bantuan')]
${btn_informasi_umum}=                      xpath=//a[contains(.,'Informasi Umum')]
${btn_verifikasi_dan_pengaturan_akun}       xpath=//a[contains(.,'Verifikasi dan Pengaturan Akun')]
${btn_kirim_uang}=                          xpath=//a[contains(.,'Kirim Uang')]
${btn_flip_globe}                           xpath=//a[contains(.,'Flip Globe')]
${btn_pulsa_dan_paket_data}=                xpath=//a[contains(.,'Pulsa dan Paket Data')]
${btn_listrik_pln}                          xpath=//a[contains(.,'Listrik PLN')]
${btn_saldo_flip}=                          xpath=//a[contains(.,'Saldo Flip')]
${btn_refund}=                              xpath=//a[contains(.,'Refund')]
${btn_kendala_aplikasi}                     xpath=//a[contains(.,'Kendala Aplikasi')]
${btn_promo}=                               xpath=//a[contains(.,'Promo')]
${btn_big_flip}=                            xpath=//a[contains(.,'Big Flip')]

#karir
${btn_karir}                        xpath=//ul[@class='nav pull-left']//a[.='Karir']
${lbl_flip_careers}                 xpath=//h4[@class='brand-text'][contains(text(),'Flip Careers')]
${txt_choose_department}            xpath=//input[@placeholder='Choose Department']
${txt_choose_work_type}             xpath=//input[@placeholder='Choose Work Type']
${txt_choose_location}              xpath=//input[@placeholder='Choose Location']
${lbl_remote_only}                  xpath=//span[contains(.,'Remote Only')]
${txt_search_job_title}             xpath=//input[@placeholder='Search Job Title']
${lbl_header_position}              xpath=//ul[@class='open-list']/li[1]//h5[1]
${lbl_bottom_position}              xpath=//a[.='Senior Design Illustrator (Remote)']


#biaya
${btn_biaya}                        xpath=//ul[@class='nav pull-left']//a[.='Biaya']
${btn_daftar}                       xpath=//button[@class='btn-daftar']
${lbl_header}                       xpath=//h1[@class='biaya-title']
${lbl_flip_regular}                 xpath=//div[@class='card-container']/div[1]/div[@class='header-biaya']
${lbl_big_flip}                     xpath=//div[@class='card-container']/div[2]/div[@class='header-biaya']
${txt_tidak_ada_biaya}              xpath=//div[@class='panel-kiri']/p[1]
${btn_faq_lainnya}                  xpath=//button[contains(.,'Lihat FAQ lainnya')]

#Login
${btn_login}                        xpath=//ul[@class='nav pull-left']//a[.='Masuk']
${lbl_welcome}                      xpath=//h1[@class='sc-ebFjAB kMYCel']
${txt_email}                        xpath=//input[@name='email']
${txt_password}                     xpath=//input[@name='password']

*** Keywords ***
User open flip
    SeleniumLibrary.Open Browser         https://flip.id/       browser=Chrome
    Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_bantuan}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_karir}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_biaya}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_login}

User click bantuan menu
    SeleniumLibrary.Click Element          ${btn_bantuan}

User verify bantuan menu
    SeleniumLibrary.Wait Until Element Is Visible          ${lbl_pusat_bantuan}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_informasi_umum}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_verifikasi_dan_pengaturan_akun}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_kirim_uang}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_flip_globe}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_pulsa_dan_paket_data}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_listrik_pln}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_saldo_flip}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_refund}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_kendala_aplikasi}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_promo}
    SeleniumLibrary.Wait Until Element Is Visible          ${btn_big_flip}

User click karir menu
    SeleniumLibrary.Click Element          ${btn_karir}

User verify karir menu
    SeleniumLibrary.Wait Until Element Is Visible            ${lbl_flip_careers}
    SeleniumLibrary.Wait Until Element Is Visible            ${txt_choose_department}
    SeleniumLibrary.Wait Until Element Is Visible            ${txt_choose_work_type}
    SeleniumLibrary.Wait Until Element Is Visible            ${txt_choose_location}
    SeleniumLibrary.Wait Until Element Is Visible            ${lbl_remote_only}
    SeleniumLibrary.Scroll Element Into View                 ${txt_search_job_title}
    SeleniumLibrary.Scroll Element Into View                 ${lbl_header_position}
    SeleniumLibrary.Scroll Element Into View                 ${lbl_bottom_position}

User click biaya menu
    SeleniumLibrary.Click Element          ${btn_biaya}

User verify biaya menu
    SeleniumLibrary.Wait Until Element Is Visible            ${btn_daftar}
    SeleniumLibrary.Wait Until Element Is Visible            ${lbl_header}
    SeleniumLibrary.Wait Until Element Is Visible            ${lbl_flip_regular}
    SeleniumLibrary.Wait Until Element Is Visible            ${lbl_big_flip}
    SeleniumLibrary.Scroll Element Into View                 ${txt_tidak_ada_biaya}
    SeleniumLibrary.Scroll Element Into View                 ${btn_faq_lainnya}

User click masuk menu
    SeleniumLibrary.Click Element          ${btn_login}

User verify masuk menu
    SeleniumLibrary.Wait Until Element Is Visible            ${lbl_welcome}
    SeleniumLibrary.Wait Until Element Is Visible            ${txt_email}
    SeleniumLibrary.Wait Until Element Is Visible            ${txt_password}
