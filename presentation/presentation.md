footer: **UIKit: style in Swift way** - Eduard Panasiuk - https://github.com/somedev

#UIKit: style in Swift way
### Eduard Panasiuk

---

#The problem

Using same color palette, fonts, sizes across application

![inline](img/same_style.jpeg)

^ При изменении требований кол-во изменений должно быть минимальным

---

#The problem

Moving UI elements parameters to categories

![inline](img/color.png)

^ категории для цвета

---

#The problem

Moving UI elements parameters to categories

![inline](img/font.png)

^ категории для шрифта

---

#The problem

Moving UI elements parameters to categories

![inline](img/didload.png)

^ конфигурирование элементов

---

#The problem

How about night theme?

![inline](img/tweetbot.jpeg)

^ приходит продакт и "А давайте ночной режим замутим"

---


#The problem

Moving UI elements parameters to categories

![inline](img/didload.png)

^ уже не подходит
^ Code duplicating
^ много дополнительных параметров (text align, opacity, corner radius ...)
 
---

#The problem

Multiple apps with same codebse & different UI styles?

![inline](img/constructor.jpeg)

^ приходит продакт и "А давайте ночной режим замутим"

---


#Solution
<br>
# "STYLE" for each UI element (UILabel, UIButton, UITextField, UIView ...)

^ понятие стиля

---

#Playground

---
#Atomic Design


![inline](img/atomic-design.jpg)

---
#Atomic Design

View style contains styles for subviews


![inline](img/todo.png)

^ пример - ToDo app (Things) checkbox + label + label
^ пример - банер в нескольких местах аплика (label + button)

---

#Atomic Design

View style contains styles for subviews

![inline](img/ToDoItemViewStyle.png)

---

#Atomic Design

View style contains styles for subviews

![inline](img/ToDoItemView.png)

---

#Questions?