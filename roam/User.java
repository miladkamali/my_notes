public static void main(String[] args) {
    @Entity
    @Getter
    @Setter
    @NoArgsConstructor // Required by Hibernate
    // @AllArgsConstructor // Optional: useful for your tests, but not required by Hibernate
    public class User {
        @Id
        @GeneratedValue
        private Long id;

        private String name;

        // ...
    }
}