select model,name_auto,manufacturer from models inner join auto on(models.auto_id=auto.id) 
left outer join manufacturer on(models.id_manufacturer=manufacturer.id_manufacturer)

Сам запрос,который выводит Модель-Бренд-Завод 