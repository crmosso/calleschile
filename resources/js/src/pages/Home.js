import React, { useEffect, useState } from "react";
import Select from "../components/Select";
import "./Home.css";

const URL = "http://127.0.0.1:8000/api";
const REGIONS_ROUTE = "regions";
const PROVINCES_ROUTE = "provinces";
const CITIES_ROUTE = "cities";
const STREETS_ROUTE = "streets";

const Home = () => {
    const [regions, setRegions] = useState([]);
    const [provinces, setProvinces] = useState([]);
    const [cities, setCities] = useState([]);
    const [streets, setStreets] = useState([]);
    const [isLoading, setIsLoading] = useState(false);

    const getRegions = async () => {
        setIsLoading(true);
        const endpoint = `${URL}/${REGIONS_ROUTE}`;
        const response = await fetch(endpoint);
        const responseJson = await response.json();
        setRegions(responseJson);
        setIsLoading(false);
    };

    const getProvincesByRegion = async (regionId) => {
        setIsLoading(true);
        const endpoint = `${URL}/${PROVINCES_ROUTE}/${REGIONS_ROUTE}/${regionId}`;
        const response = await fetch(endpoint);
        const responseJson = await response.json();
        setProvinces(responseJson);
        setIsLoading(false);
    };

    const getCitiesByProvince = async (provinceId) => {
        const endpoint = `${URL}/${CITIES_ROUTE}/${PROVINCES_ROUTE}/${provinceId}`;
        const response = await fetch(endpoint);
        const responseJson = await response.json();
        setCities(responseJson);
    };

    const getStreetsByCity = async (cityId) => {
        const endpoint = `${URL}/${STREETS_ROUTE}/${CITIES_ROUTE}/${cityId}`;
        const response = await fetch(endpoint);
        const responseJson = await response.json();
        setStreets(responseJson);
    };

    const handleChangeRegion = (regionId) => {
        getProvincesByRegion(regionId);
        setStreets([]);
    };

    const handleChangeProvince = (provinceId) => {
        getCitiesByProvince(provinceId);
        setStreets([]);
    };

    const handleChangeCities = (cityId) => {
        getStreetsByCity(cityId);
    };

    useEffect(() => {
        getRegions();
    }, []);

    return (
        <>
            <header>
                <div className="container pt-5">
                    <div className="row">
                        <div className="col">
                            <h1>Calles de Chile</h1>
                        </div>
                    </div>
                </div>
            </header>
            <main>
                <section id="selects-data">
                    <div className="container mt-5">
                        <div className="row">
                            <div className="col">
                                {isLoading && (
                                    <div
                                        className="spinner-border text-primary"
                                        role="status"
                                    >
                                        <span className="visually-hidden"></span>
                                    </div>
                                )}
                            </div>
                        </div>
                        <div className="row">
                            <div className="col">
                                <form>
                                    <div className="row">
                                        <div className="col-4">
                                            <label htmlFor="regions">
                                                Regiones
                                            </label>
                                            <Select
                                                placeholder="Seleccione una región"
                                                onChange={handleChangeRegion}
                                                options={regions}
                                            />
                                        </div>
                                        <div className="col-4">
                                            <label htmlFor="provinces">
                                                Provincias
                                            </label>
                                            <Select
                                                placeholder="Seleccione una provincia"
                                                onChange={handleChangeProvince}
                                                options={provinces}
                                            />
                                        </div>
                                        <div className="col-4">
                                            <label htmlFor="cities">
                                                Ciudades
                                            </label>
                                            <Select
                                                onChange={handleChangeCities}
                                                options={cities}
                                            />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
                {streets.length > 0 && (
                    <section className="container">
                        <div className="row mt-5">
                            <div className="col">
                                <h1>Calles</h1>
                            </div>
                        </div>
                        <div className="row mt-1">
                            {streets.map((item) => {
                                return (
                                    <div className="col-auto">
                                        <span
                                            key={item.id}
                                            className="badge badge-pill badge-primary py-2 px-4 text-street-name"
                                        >
                                            Calle: {item.name}
                                        </span>
                                    </div>
                                );
                            })}
                        </div>
                    </section>
                )}
            </main>
        </>
    );
};

export default Home;
