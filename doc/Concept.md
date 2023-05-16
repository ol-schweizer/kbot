## **ВСТУП**

Мінікуб, kind і k3d - це інструменти для створення та керування локальними кластерами Kubernetes. Вони надають зручний спосіб розгортання та використання Kubernetes у відсутності реального хмарного середовища.

 - Minikube: Minikube дозволяє швидко розгорнути локальний
   однокластерний кластер Kubernetes на вашому комп'ютері. Він створює
   віртуальну машину з мінімальними вимогами та запускає кластер
   Kubernetes всередині неї. Minikube є ідеальним варіантом для
   розробників, які хочуть експериментувати з Kubernetes на своєму
   робочому столі або ноутбуці.
   
 - kind: Kind (Kubernetes in Docker) - це інструмент, який надає
   здатність запускати локальні кластери Kubernetes, використовуючи   
   Docker контейнери як вузли кластера. Він дозволяє швидко створювати  
   багатоконтейнерні кластери на вашому комп'ютері для розробки,   
   тестування та відлагодження додатків, які використовують Kubernetes.
 -  k3d: k3d - це інструмент, який дозволяє створювати легкі, швидкі та портативні локальні кластери Kubernetes, використовуючи Docker
   контейнери як вузли кластера. Він пропонує простий спосіб запуску і
   управління однокластерними або багатокластерними кластерами
   Kubernetes на вашому комп'ютері або в середовищі CI/CD. k3d є
   корисним для розробки, тестування та демонстрації додатків, які
   використовують Kubernetes.

Усі ці інструменти дозволяють розробникам легко розгортати та експериментувати з Kubernetes на своєму локальному комп'ютері, що допомагає прискорити розробку, тестування та відлагодження додатків

## **Характеристики**

| Характеристика           | Minikube                                        | KIND                                              | k3d                                                 |
|--------------------------|-------------------------------------------------|---------------------------------------------------|-----------------------------------------------------|
| Підтримувані ОС          | Windows, macOS, Linux                           | Windows, macOS, Linux                             | Windows, macOS, Linux                               |
| Підтримувані архітектури | x86, ARM                                        | x86, ARM                                          | x86, ARM                                            |
| Автоматизація            | Обмежена автоматизація                          | Можливість автоматичного створення та управління  | Можливість автоматичного створення та управління    |
|                          |                                                 | кластерами за допомогою YAML-файлів               | кластерами за допомогою YAML-файлів                 |
| Моніторинг та            | Підтримка візуалізаторів та дашбордів,          | Можливість встановлення та                        | Вбудована підтримка kubectl та k9s для управління   |
| керування Kubernetes     | такі як Dashboard та kube-state-metrics         | конфігурація інструментів моніторингу             | та моніторингу                                      |
|                          |                                                 | (наприклад, Prometheus, Grafana)                  |                                                     |
| Переваги                 | Легкий у використанні                           | Швидке розгортання та управління кластерами       | Швидке розгортання та управління кластерами         |
|                          | Хороша підтримка спільноти                      | Гнучкіше налаштування та                          | Можливість створення багатокластерних кластерів     |
|                          | Добра документація                              | керування Kubernetes на локальному комп'ютері     |                                                     |
| Недоліки                 | Обмежена автоматизація                          | Може бути менш стабільним у порівнянні з Minikube | Обмежена підтримка функцій моніторингу та керування |
|                          | Деякі обмеження на роботу з деяким функціоналом | Необхідність встановлення Docker                  |                                                     |


## **ДЕМО**

https://asciinema.org/a/585138