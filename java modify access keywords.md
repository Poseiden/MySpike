|  | private | friendly | protected | public |
| ----- | ------- | -------- | -------- | ------ |
| class | no | yes | no | yes | 
| field | yes | yes | yes | yes |


#### 当 class 没有访问修饰符时（friendly）
- 只有与该 class 在同一包下的类才有访问权

- 字段为 private 时，只有在该 class 内部才有访问权

- 字段没有修饰符时（friendly），只有与该 class 处于同一个包下的类才能在该类的实例中访问该字段

- 字段为 protected 时，与该 class 处于同一个包下的类可以在该类的实例中访问该字段；继承此 class 的类也能通过 super 关键字访问到该字段

- 字段为 public 时，只有与该 class 处于同一个包下的类才能在该类的实例中访问该字段


#### 当 class 的访问修饰符为 public
- 字段没有修饰符时（friendly），只有与该 class 处于同一个包下的类才能在该类的实例中访问该字段

- 字段修饰符为 protected 时，与该 class 同处一个包下的类可以通过该 class 的实例来访问该字段，继承该 class 的类可以通过 super 关键字来访问该字段