﻿#language: ru

@tree
@ДвиженияДокументов

Функционал: проверка движения документа Поступления товаров

Как Тестировщик я хочу
движение документа Поступление товаров
чтобы убедиться что документ делает по нужным регитсрам
Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	
Сценарий: _0501 подготовительный сценарий (движения документа Поступление товаров)

	Когда экспорт основных данных
	Когда загрузка документа поступление товаров и услуг

//	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
//	Тогда в таблице "List" я выделяю все строки
//	И в таблице "List" я нажимаю на кнопку с именем 'ListContextMenuPost'
//	Тогда не появилось окно предупреждения системы
	И я выполняю код встроенного языка на сервере
		|'Документы.PurchaseInvoice.НайтиПоНомеру(1001).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|

Сценарий: _0502 проверка движения документа Поступления товаров	по регистру R1001 Закупки
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице "List" я перехожу к строке
		| 'Номер' |
		| '1 001' |
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ "ResultTable" равен:
		| 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                          | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                 | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| ''                                                         | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | 'Attributes'        |
		| ''                                                         | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                   | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                         | '15.03.2022 17:19:04' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Услуга'                  | 'd7dc59ea-3ae6-45fe-8c4a-1766deb8f620' | 'Да'                |
		| ''                                                         | '15.03.2022 17:19:04' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Услуга'                  | 'd7dc59ea-3ae6-45fe-8c4a-1766deb8f620' | 'Нет'               |
		| ''                                                         | '15.03.2022 17:19:04' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Услуга'                  | 'd7dc59ea-3ae6-45fe-8c4a-1766deb8f620' | 'Нет'               |
		| ''                                                         | '15.03.2022 17:19:04' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Услуга'                  | 'd7dc59ea-3ae6-45fe-8c4a-1766deb8f620' | 'Нет'               |
		| ''                                                         | '15.03.2022 17:19:04' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Услуга'                  | 'd7dc59ea-3ae6-45fe-8c4a-1766deb8f620' | 'Нет'               |
		| ''                                                         | '15.03.2022 17:19:04' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Товар без характеристик' | 'fce13cbf-fcb3-46d1-a296-71a59a9ece6d' | 'Да'                |
		| ''                                                         | '15.03.2022 17:19:04' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Товар без характеристик' | 'fce13cbf-fcb3-46d1-a296-71a59a9ece6d' | 'Нет'               |
		| ''                                                         | '15.03.2022 17:19:04' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Товар без характеристик' | 'fce13cbf-fcb3-46d1-a296-71a59a9ece6d' | 'Нет'               |
		| ''                                                         | '15.03.2022 17:19:04' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Товар без характеристик' | 'fce13cbf-fcb3-46d1-a296-71a59a9ece6d' | 'Нет'               |
		| ''                                                         | '15.03.2022 17:19:04' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | 'Товар без характеристик' | 'fce13cbf-fcb3-46d1-a296-71a59a9ece6d' | 'Нет'               |
	И я закрываю все окна клиентского приложения
	
Сценарий: _0503 проверка движения документа Поступления товаров	по регистру R1021 Взаиморасчеты с поставщиками
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице "List" я перехожу к строке
		| 'Номер' |
		| '1 001' |
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1021 Взаиморасчеты с поставщиками'
	И я нажимаю на кнопку с именем 'GenerateReport'				
	Тогда табличный документ "ResultTable" содержит строки по шаблону:
		| 'Поступление товаров и услуг 1 001 от 15.03.2022 17:19:04' | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Движения документа по регистрам'                          | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Регистр  "R1021 Взаиморасчеты с поставщиками"'            | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| ''                                                         | 'Record type' | 'Period'              | 'Resources' | 'Dimensions'             | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | 'Attributes'        | ''                             |
		| ''                                                         | ''            | ''                    | 'Сумма'     | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Контрагент'  | 'Партнер'     | 'Соглашение'                 | 'Документ основание' | 'Отложенный расчет' | 'Закрытие авансов поставщиков' |
		| ''                                                         | 'Приход'      | '*'                   | ''          | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Да'                | ''                             |
		| ''                                                         | 'Приход'      | '15.03.2022 17:19:04' | '343,6'     | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '15.03.2022 17:19:04' | '400'       | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '15.03.2022 17:19:04' | '400'       | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '15.03.2022 17:19:04' | '400'       | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
	И я закрываю все окна клиентского приложения
		