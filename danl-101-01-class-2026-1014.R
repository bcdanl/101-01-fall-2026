library(dplyr)

orders <- data.frame(
  order_id = c(101, 102,
               103, 104),
  customer_id = c("C01", "C02",
                  "C01", "C03"),
  total = c(25, 40, 15, 30)
)

customers <- data.frame(
  customer_id = c("C01", "C02",
                  "C04"),
  city = c("Rochester",
           "Buffalo", "Albany")
)



orders_with_city <- orders |> left_join(customers, by = "customer_id")

orders_with_city___ <- orders |> left_join(customers)


customers_with_orders <- customers |> 
  left_join(orders)




# classwork 9 -------------------------------------------------------------

library(dplyr)

students <- data.frame(
  student_id = 101:104,
  student_name = c("Ava", "Ben", "Cora", "Diego"),
  major_code = c("DANL", "BIOL", "DANL", "ART")
)

majors <- data.frame(
  major_code = c("BIOL", "DANL", "ECON"),
  major_name = c("Biology", "Data Analytics", "Economics")
)

# if students is the main data.frame:
students_with_major <- students |>
  left_join(majors, by = "major_code")
students_with_major

# if majors is the main data.frame:
majors_with_students <- majors |> 
  left_join(students, by = "major_code")



