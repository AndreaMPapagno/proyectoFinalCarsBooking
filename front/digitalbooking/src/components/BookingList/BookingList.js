import React from "react";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import styles from "./BookingList.module.scss";
import NoBookings from "./NoBookings/NoBookings";
import { ip } from "../IP/IpConstante";
import { format, parseISO } from "date-fns";
import { useAuth } from "../../hooks/index";
import jwt_decode from "jwt-decode";
//import bookings from '../../db/booking.json';

function BookingList() {
    const [id, setId] = useState();
    const url = `${ip}/bookings/user/${id}`;
    const [bookings, setBookings] = useState([]);
    const { token, setToken } = useAuth();
    //const navigate = useNavigate();

    //FETCH A LISTA DE RESERVAS POR USUARIO
    useEffect(() => {
        if (id) {
        fetch(url)
            .then((res) => res.json())
            .then((result) => {
            console.log(result);
            setBookings(result);
            });
        }
    }, [url, id]);

    //CHEQUEAR TOKEN PARA TOMAR EL ID USER
    useEffect(() => {
        if (token) {
        const decoded = jwt_decode(token);
        console.log(decoded);
        setId(decoded.id);
        }
    }, [token]);

    if (bookings === null) {
        return null;
    }

    return (
        <div className={styles.container}>
        <header className={styles.header}>
            <div>
            <h2> Mis reservas </h2>
            </div>
            <div>
            <Link to="/">
                <i className="fa-solid fa-chevron-left fa-xl"></i>
            </Link>
            </div>
        </header>
        {bookings.length === 0 ? (
            <NoBookings />
        ) : (
            <section className={styles.container_booking}>
                {bookings.map((booking) => {
                const startDateF = format(
                parseISO(booking.start_date),
                "yyyy-MM-dd"
                ); 

                //console.log(booking.start_date.setDate(booking.start_date.getDate() + 1))
                const endDateF = format(parseISO(booking.end_date), "yyyy-MM-dd");
                return (
                <article
                    data-testid="booking"
                    key={booking.id}
                    className={styles.booking}
                >
                    <div className={styles.container_img}>
                    <img
                        className={styles.booking_img}
                        src={booking.product.portada_url}
                        alt={booking.product.brand}
                    ></img>
                    </div>
                    <div className={styles.booking_info}>
                    <div className={styles.booking_header}>
                        <h3> {booking.product.category.category} </h3>
                        <h2>
                        {`${booking.product.brand} - ${booking.product.model}`}
                        </h2>
                        <h4>
                        <i
                            className={`${styles.icon} fa-solid fa-location-dot`}
                        ></i>
                        {booking.product.city.address}
                        </h4>
                    </div>
                    <div className={styles.date_container}>
                        <p className={styles.booking_date}> Fecha retiro </p>
                        <p> {startDateF} </p>
                    </div>
                    <div className={styles.line} />
                    <div className={styles.date_container}>
                        <p className={styles.booking_date}> Fecha devolución </p>
                        <p> {endDateF} </p>
                    </div>
                    </div>
                </article>
                );
            })}
            </section>
        )}
        </div>
    );
}

export default BookingList;
