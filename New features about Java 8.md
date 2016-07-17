# New features about Java 8

#### Default method in interface
- 接口中可以有具体方法实现，需要加上default关键字。接口和抽象类的用法是否越来越接近，有待研究。

#### Lambda
- Before Java 8

```java
	List<String> names = Arrays.asList("zhangsan","lisi","wangwu");	Collections.sort(names,new Collector<String>(){
		@Override
		public int compare(String a,String b) {
			return b.compareTo(a);
		}
	});	
```

- Now

```java
	Collections.sort(names, (a,b) -> b.compareTo(a));
```

#### Functional Interface

#### Invoke method or constructor

- invoke static method 

```java
Integer::valueOf
```

- invoke instance method

```java
exampleObject::exampleMethod
```

- invoke constructor

```java
public class Person {
	public String firstName;
	public String lastName;
	
	public Person(String firstName,String lastName){
		this.firstName = firstName;
		this.lastName = lastName;
	}
}
```

```java
public interface PersonFactory<P extends Person>{
	P create();
}
```

```java
public class PersonTest {
	PersonFactory factory = Person::new;
	
	Person person = factory.create();
}
```

We can get ref of Person constructor through `Person::new`,and java compiler can select appropriate constructor to implement create method in PersonFactory according to method signature.

#### Lambda scope

#### Local variable in lambda