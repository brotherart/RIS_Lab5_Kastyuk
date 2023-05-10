package dao;

import model.Flight;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

import java.util.List;

@Stateless(name = "flightDaoImpl")
public class FlightDaoImpl implements FlightDao {

    @PersistenceContext(unitName = "MySqlPersist")
    private EntityManager entityManager;

    @Override
    public Flight findFlightById(Long id) {
        Flight flight = null;
        try {
            flight = entityManager.find(Flight.class, id);
        } catch (Exception e) {

        }
        return flight;
    }

    @Override
    public List<Flight> allFlights() {
        return (List<Flight>) entityManager.createQuery("select c from Flight c")
                .getResultList();
    }

    @Override
    public void addFlight(Flight flight) {
        try {
            entityManager.persist(flight);
        } catch (Exception e) {

        }
    }

    @Override
    public void update(Flight flight) {
        try {
            entityManager.merge(flight);
        } catch (Exception e) {

        }
    }

    @Override
    public void delete(Flight flight) {
        Flight removed = entityManager.merge(flight);
        entityManager.remove(removed);
    }
}
