package ManagerBean;

import dao.FlightDao;
import model.Flight;
import jakarta.annotation.ManagedBean;
import jakarta.ejb.EJB;
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Named;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Vector;

@ManagedBean
@RequestScoped
@Named(value = "flightController")
@Getter
@Setter
public class FlightJms implements Serializable {
    @EJB(beanName = "flightDaoImpl")
    private FlightDao flightDao;

    private Long id;
    private Flight flight = new Flight();

    private Flight flightSearch = new Flight();

    public void addFlight() {
        flightDao.addFlight(flight);
    }

    public void updateFlight() {
        flightDao.update(flight);
    }

    public void searchFlight() {
        flightSearch = flightDao.findFlightById(id);
    }

    public Vector<Flight> allFlights() {
        return (Vector<Flight>) flightDao.allFlights();
    }

    public void deleteFlight() {
        Flight flight = flightDao.findFlightById(id);
        flightDao.delete(flight);
    }
}
