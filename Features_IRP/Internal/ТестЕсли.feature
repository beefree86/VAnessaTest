﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
* Проверка видимости элемента
	Если элемент формы с именем "Company" отсутствует на форме Тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
	И я нажимаю кнопку выбора у поля с именем "PriceType"
* Сверка с макетом когда не совпадают строки
	Если Табличный документ "Result" равен макету "Закупки2" Тогда
	ИначеЕсли Табличный документ "Result" равен макету "Закупки1" Тогда
	Иначе
		Тогда я вызываю исключение "Макет не совпадает с эталоном"
* Проверка в разном окружении
	Если это Linux Тогда
	Если это web клиент Тогда
* Стабилизация тестов
	Если появилось окно с заголовком "Сошлашение (создание)" в течение 10 секунд Тогда
		И я закрываю окно "Сошлашение (создание)"
* При создании первоначальных настроек
	Если в таблице "List" нет строки Тогда
		| 'Контрагент'  |
		| 'Контрагент1' |
		И я нажимаю на кнопку "Создать"
* Разные условия
	Если я нажимаю кнопку выбора у поля с именем "Company" Тогда
		И я закрываю текущее окно
		
			

	
	
