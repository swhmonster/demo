package xin.jys913.test.java8;

import org.junit.Assert;
import org.junit.Test;
import xin.jys913.test.java8.bean.Student;
import xin.jys913.test.java8.bean.User;

import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * @Description:
 * @author prince_913
 * @Date: 2018/11/28 19:44:21
 */
public class StreamTest {

    List<Student> list = new ArrayList<>();

    {
        Student stuA = new Student(1, "A", "M", 184);
        Student stuB = new Student(2, "B", "G", 163);
        Student stuC = new Student(3, "C", "M", 175);
        Student stuD = new Student(4, "D", "G", 158);
        Student stuE = new Student(5, "E", "M", 170);
        list.add(stuA);
        list.add(stuB);
        list.add(stuC);
        list.add(stuD);
        list.add(stuE);
    }

    @Test
    public void of() {
        Stream.of(1, 2, 3).forEach(System.out::println);
    }

    @Test
    public void generate() {
        Stream.generate(User::new).limit(10).forEach(e -> System.out.println(System.identityHashCode(e)));
    }

    @Test
    public void iterate() {
        Stream.iterate(1, item -> item + 2).limit(10).forEach(System.out::println);
    }

    @Test
    public void stream() {
        list.stream().parallel().filter(e -> e.getHeight() > 160).forEach(System.out::println);
    }

    @Test
    public void parallelStream() {
        list.parallelStream().filter(e -> e.getHeight() > 160).forEach(System.out::println);
    }

    @Test
    public void concat() {
        Stream.concat(Stream.of(1, 2, 3), Stream.of(4, 5)).forEach(integer -> System.out.print(integer + "、"));
    }

    @Test
    public void distinct() {
        Stream.of(1, 2, 3, 1, 2, 3).distinct().forEach(System.out::println);
    }

    @Test
    public void filter() {
        Stream.of(1, 2, 3, 4, 5).filter(item -> item > 3).forEach(System.out::println);
    }

    @Test
    public void map() {
        Stream.of("a", "b", "hello").map(String::toUpperCase).forEach(System.out::println);
    }

    @Test
    public void flatMap() {
        Stream.of(1, 2, 3).flatMap(integer -> Stream.of(integer * 10)).forEach(System.out::println);
    }

    @Test
    public void peek() {
        Stream.of(1, 2, 3, 4, 5).peek(integer -> System.out.println("accept:" + integer)).forEach(System.out::println);
    }

    @Test
    public void skipSorted() {
        Stream.of(7, 2, 9, 4, 6, 8, 1, 2, 3, 4, 5).skip(2).sorted(Comparator.reverseOrder())
                .forEach(System.out::println);
    }

    @Test
    public void count() {
        System.out.println("count:" + Stream.of(1, 2, 3, 4, 5).count());
    }

    @Test
    public void forEachOrder() {
        System.out.println("↓↓串行↓↓");
        Stream.of(5, 2, 1, 4, 3).forEachOrdered(System.out::print);
        System.out.println();
        Stream.of(5, 2, 1, 4, 3).forEach(System.out::print);
        System.out.println();
        Stream.of(5, 2, 1, 4, 3).sorted().forEachOrdered(System.out::print);
        System.out.println();
        Stream.of(5, 2, 1, 4, 3).sorted().forEach(System.out::print);
        System.out.println("\n↓↓并行↓↓");
        Stream.of(5, 2, 1, 4, 3).parallel().forEachOrdered(System.out::print);
        System.out.println();
        Stream.of(5, 2, 1, 4, 3).parallel().forEach(System.out::print);
        System.out.println();
        Stream.of(5, 2, 1, 4, 3).parallel().sorted().forEachOrdered(System.out::print);
        System.out.println();
        Stream.of(5, 2, 1, 4, 3).parallel().sorted().forEach(System.out::print);
    }

    @Test
    public void match() {
        System.out.println("allMatch: " + Stream.of(1, 2, 3, 4).allMatch(e -> e > 0));
        System.out.println("anyMatch: " + Stream.of(1, 2, 3, 4).anyMatch(e -> e > 3));
    }

    @Test
    public void find() {
        System.out.println("findAny:" + Stream.of(1, 2, 3, 4).parallel().findAny());
        System.out.println("findFirst:" + Stream.of(1, 2, 3, 4).parallel().findFirst());
    }

    @Test
    public void skipLimitSorted() {
        Stream.of(7, 2, 9, 4, 6, 8, 1, 2, 3, 4, 5).skip(2).limit(5).sorted(Comparator.reverseOrder())
                .forEach(System.out::println);
    }

    @Test
    public void collection() {
        Stream.of(7, 2, 9, 4, 6, 8, 1, 2, 3, 4, 5).map(e -> e + 1).skip(2).sorted(Comparator.reverseOrder()).limit(5)
                .forEach(System.out::println);
        System.out.println(
                Stream.of(7, 2, 9, 4, 6, 8, 1, 2, 3, 4, 5).map(e -> e + 1).skip(2).sorted(Comparator.reverseOrder())
                        .limit(5).collect(Collectors.groupingBy(el -> el / 3)));
    }

    @Test
    public void collection1() {
        List a = Stream.of(7, 2, 9, 4, 6, 8, 1, 2, 3, 4, 5).map(e -> e + 1).skip(2).sorted(Comparator.reverseOrder())
                .limit(5).collect(Collectors.toList());
        Assert.assertTrue(a instanceof ArrayList);
    }

    @Test
    public void collection2() {
        Optional<Integer> collectMaxBy = Stream.of(1, 2, 3, 4).max(Comparator.comparingInt(o -> o));
        System.out.println("collectMaxBy:" + collectMaxBy.get());
    }

    @Test
    public void partingBy() {
        Map<Boolean, List<Integer>> collectParti = Stream.of(1, 2, 3, 4)
                .collect(Collectors.partitioningBy(it -> it % 2 == 0));
        System.out.println("collectParti : " + collectParti);
    }

    @Test
    public void partingBy1() {
        Map<Boolean, List<Integer>> collectParti = Stream.of(1, 2, 3, 4)
                .collect(Collectors.partitioningBy(it -> it % 2 == 0));

        Map<Boolean, Integer> mapSize = new HashMap<>();
        collectParti.entrySet().forEach(entry -> mapSize.put(entry.getKey(), entry.getValue().size()));

        System.out.println("mapSize : " + mapSize);
    }

    @Test
    public void partingBy2() {
        Map<Boolean, Long> partiCount = Stream.of(1, 2, 3, 4)
                .collect(Collectors.partitioningBy(it -> it % 2 == 0, Collectors.counting()));
        System.out.println("partiCount: " + partiCount);
    }

    @Test
    public void groupingBy() {
        Map<Boolean, List<Integer>> collectGroup = Stream.of(1, 2, 3, 4).collect(Collectors.groupingBy(it -> it > 3));
        System.out.println("collectGroup : " + collectGroup);
    }

    @Test
    public void joinStr() {
        ArrayList<Integer> list = new ArrayList<>();
        list.add(1);
        list.add(2);
        list.add(3);
        list.add(4);
        StringBuilder sb = new StringBuilder();
        for (Integer it : list) {
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append(it);
        }
        System.out.println(sb.toString());
    }

    @Test
    public void join() {
        String strJoin = Stream.of("1", "2", "3", "4").collect(Collectors.joining(",", "[", "]"));
        System.out.println("strJoin: " + strJoin);
    }

    @Test
    public void reduce1() {
        //1+2+3+4
        Optional f = Stream.of(1, 2, 3, 4, 5, 6, 7, 8, 9).reduce((y, x) -> {
            System.out.print("( " + y + "+" + x + ")+");
            y += x;
            return y;
        });
        System.out.println("f: " + f);
    }

    @Test
    public void reduce2() {
        //0+1+2+3+4
        int f = Stream.of(1, 2, 3, 4, 5, 6, 7, 8, 9).reduce(0, (y, x) -> {
            System.out.print("( " + y + "+" + x + ")+");
            y += x;
            return y;
        });
        System.out.println("f: " + f);
    }

    @Test
    public void reduce20() {
        //0+1+2+3+4
        Optional f = Stream.of(1, 2, 3, 4, 5, 6, 7, 8, 9).parallel().reduce((y, x) -> {
            System.out.print("( " + y + "+" + x + ")+");
            y += x;
            return y;
        });
        System.out.println();
        System.out.println("f: " + f);
    }

    @Test
    public void reduce21() {
        //0+1+2+3+4
        int f = Stream.of(1, 2, 3, 4, 5, 6, 7, 8,9).parallel().reduce(100, (y, x) -> {
            System.out.print("( " + y + "+" + x + ")+");
            System.out.println(LocalDateTime.now().getSecond());
            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            y += x;
            return y;
        });
        System.out.println();
        System.out.println("f: " + f);
    }

    @Test
    public void reduce22() {
        //0+1+2+3+4
//        System.setProperty("java.util.concurrent.ForkJoinPool.common.parallelism", "1");
        StringBuilder sb = new StringBuilder();
        int f = Stream.of(1, 2, 3, 4, 5, 6, 7, 8,9).parallel().reduce(100, (y, x) -> {
            System.out.print("( " + y + "+" + x + ")+");
            y += x;
            return y;
        }, (y, x) -> {
            sb.append("(").append(y).append("+").append(x).append(")").append("+");
            return y + x;
        });
        System.out.println();
        System.out.println("f: " + f);
        System.out.print(sb);
    }

    @Test
    public void reduce31() {
        System.out.println(Stream.of("8", "1", "0", "2").parallel().reduce("0", (y, x) -> {
            System.out.println("y:" + y);
            System.out.println("x:" + x);
            System.out.println("second!");
            return Integer.toString(Integer.valueOf(y) + Integer.valueOf(x));
        }, (y, x) -> {
            System.out.println("y:" + y);
            System.out.println("x:" + x);
            System.out.println("third!");
            return y.concat(x);
        }));
    }

    @Test
    public void reduce32() {
        System.out.println(Stream.of("8", "1", "0", "2").reduce("0", (y, x) -> {
            System.out.println("y:" + y);
            System.out.println("x:" + x);
            System.out.println("second!");
            return Integer.toString(Integer.valueOf(y) + Integer.valueOf(x));
        }, (y, x) -> {
            System.out.println("third!");
            return y.concat(x);
        }));
    }

    @Test
    public void reduce33() {
        System.out.println(Stream.of("8", "1", "0", "2").parallel().reduce("年", String::concat));
        System.out.println(Stream.of("8", "1", "0", "2").reduce("年", String::concat));
    }

    @Test
    public void outter() {
        Iterator<Student> iterator = list.iterator();
        while (iterator.hasNext()) {
            Student stu = iterator.next();
            if (stu.getSex().equals("G")) {
                System.out.println(stu.toString());
            }
        }
    }

    @Test
    public void inner() {
        list.stream().parallel().filter(student -> student.getSex().equals("G"))
                .forEach(student -> System.out.println(student.toString()));
    }
}
