package dao;

import model.Flight;

import java.util.List;

public interface FlightDao {

    Flight findFlightById(Long id);

    List<Flight> allFlights();

    void addFlight(Flight flight);

    void update(Flight flight);

    void delete(Flight flight);
}
