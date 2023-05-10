package dao;


import model.Customer;

import java.util.List;

public interface CustomerDao {

    Customer findCustomerById(Long id);

    List<Customer> allCustomers();

    void addCustomer(Customer customer);

    void update(Customer customer);

    void delete(Customer customer);
}
