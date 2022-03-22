﻿#language: ru

@IgnoreOnCIMainBuild
@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Переменные:

// к первому сценарию
ЗаголовокФормыСпискаПоступления = '{!Metadata.Documents.PurchaseInvoice.ListPresentation}'
ЗаголовокПодсистемаЗакупок = '{!Metadata.Subsystems.PurchaseAP.Synonym}'

// ко второму сценарию
*ПроверяемыеЗначения
		| 'Имя'                       | 'Представление'               | 'Значение' |
		| 'СуммаДокументаПоступления' | 'Сумма документа поступления' | '900,00'   |

// к третьему сценарию
ИтоговаяСуммаОтчета = 'R16C3'

// к четвертому сценарию
СообщениеШтрихКодНеНайден = '{!R().S_019}'

// для типовой конфигурации к сценарию четыре
// Сообщение = '{NStr("en=""Barcode %1 not found.""; ru=""Штрихкод %1 не найден.""")}'