[출처](https://chamdom.blog/js-asynchronous/)
## Sync_Code
```run-python
import time

def sleep(func, delay):
    delay_until = time.time() + delay

    # 현재 시간(time.time())에 delay를 더한 delay_until이 현재 시간보다 작으면 계속 반복한다.
    while time.time() < delay_until:
        pass
    
    # 일정 시간(delay)이 경과한 이후에 콜백 함수(func)를 호출한다.
    func()

def foo():
    print('foo')

def bar():
    print('bar')

sleep(foo, 3)  # 시간을 초 단위로 변경
# bar 함수는 sleep 함수의 실행이 종료된 이후에 호출되므로 3초 이상 블로킹된다.
bar()

```
![[Pasted image 20240128231656.png]]
위 코드의 `sleep` 함수는 3초 후에 `foo` 함수를 호출한다. `bar` 함수는 `sleep` 함수가 종료된 이후에 호출되므로 3초 이상 호출되지 못하고 블로킹이 발생한다. 이처럼 동기 처리 방식은 태스크의 실행 순서가 보장된다는 장점이 있지만, 현재 실행중인 태스크가 종료할 때까지 이후 태스크들은 블로킹이 발생하는 단점이 있다.
## Async
```run-python
import threading

def foo():
    print('foo')

def bar():
    print('bar')

# threading.Timer 클래스를 사용하여 3초 후에 foo 함수를 호출
timer = threading.Timer(3, foo)
timer.start()

# bar 함수는 timer의 실행이 종료된 이후에 호출되므로 3초 이상 블로킹된다.
bar()
```
![[Pasted image 20240128231731.png]]
`threading.Timer` 함수는 앞서 살펴본 sleep 함수와 유사하게 일정 시간이 경과한 이후에 콜백함수를 실행하지만, 블로킹을 발생시키지 않는다. 이처럼 현재 실행 중인 태스크가 종료되지 않은 상태라 해도 다음 태스크를 곧바로 실행하는 방식을 **비동기(asynchronous) 처리**라고 한다.

## Queue
```
setTimeout(() => console.log(1), 0);

Promise.resolve()
  .then(() => console.log(2))
  .then(() => console.log(3));
```
위 코드의 결과는 `2 -> 3 -> 1` 순으로 출력된다. 그 이유는 프로미스의 후속 처리 메서드의 콜백 힘수는 매크로태스크 큐가 아니라 마이크로태스크 큐에 저장되기 때문이다.

마이크로태스크 큐에는 프로미스의 후속 처리 메서드의 콜백 함수가 일시 저장된다. 그 외의 비동기 함수의 콜백 함수 또는 이벤트 핸들러는 **매크로태스크 큐**에 일시적으로 저장된다.

_마이크로태스크 큐는 매크로 태스크 큐보다 우선순위가 높다._ 즉, 이벤트 루프는 콜 스택이 비면 우선 마이크로태스크 큐에서 대기하고 있는 함수를 가져와 실행한다. 이후 마이크로태스크 큐가 비면 매크로태스크 큐에서 대기하고 있는 함수를 가져와 실행한다.