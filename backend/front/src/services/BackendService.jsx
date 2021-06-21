import axios from "axios";
import Utils from "../utils/Utils";
import {alertActions, store} from "../utils/Redux";

const API_URL = 'http://localhost:8081/api/v1'
const AUTH_URL = 'http://localhost:8081/auth'

class BackendService {
    login(login, password) {
        return axios.post(`${AUTH_URL}/login`, {login, password});
    }

    logout() {
        return axios.get(`${AUTH_URL}/logout`, {headers: {Authorization: Utils.getToken()}})
    }

    retrieveAllCountries(page, limit) {
        return axios.get(`${API_URL}/countries?page=${page}&limit=${limit}`);
    }

    retrieveCountry(id) {
        return axios.get(`${API_URL}/countries/${id}`)
    }

    createCountry(country) {
        return axios.post(`${API_URL}/countries`, country);
    }

    updateCountry(country) {
        return axios.put(`${API_URL}/countries/${country.id}`, country);
    }

    deleteCountries(countries) {
        return axios.post(`${API_URL}/deletecountries`, countries)
    }

    retrieveAllArtists(page, limit) {
        return axios.get(`${API_URL}/artists?page=${page}&limit=${limit}`);
    }

    updateArtist(artist) {
        console.log(artist);
        return axios.put(`${API_URL}/artists/${artist.id}`, artist);
    }

    retrieveArtist(id) {
        return axios.get(`${API_URL}/artists/${id}`)
    }

    deleteArtists(artists) {
        return axios.post(`${API_URL}/deleteartists`, artists)
    }

    async createArtist(artist) {
        const countries = (await axios.get(`${API_URL}/countries/all`)).data;
        const isCountryInDB = countries.some((country) => country.name.toLowerCase() === artist.country.toLowerCase());

        if (isCountryInDB) {
            const artistData = { id:artist.id,  name: artist.name, century: artist.century, country: {id:countries.find((country) => country.name.toLowerCase() === artist.country.toLowerCase()).id}}
            return axios.post(`${API_URL}/artists`, artistData);
        } else {
            return Promise.reject("Такой страны нет в БД")
        }
    }

    // ---------- Museums
    retrieveAllMuseums(page, limit) {
        return axios.get(`${API_URL}/museums?page=${page}&limit=${limit}`);
    }

    updateMuseum(museum) {
        console.log(museum, 'MUSEUMS')
        return axios.put(`${API_URL}/museums/${museum.id}`, museum);
    }

    retrieveMuseum(id) {
        return axios.get(`${API_URL}/museums/${id}`)
    }

    deleteMuseums(museums) {
        return axios.post(`${API_URL}/deletemuseums`, museums)
    }

    async createMuseum(museum) {
        return axios.post(`${API_URL}/museums`, museum);
    }

    // ---------- Paintings
    retrieveAllPaintings(page, limit) {
        return axios.get(`${API_URL}/paintings?page=${page}&limit=${limit}`);
    }

    updatePainting(painting) {
        return axios.put(`${API_URL}/paintings/${painting.id}`, painting);
    }

    retrievePainting(id) {
        return axios.get(`${API_URL}/paintings/${id}`)
    }

    deletePaintings(paintings) {
        return axios.post(`${API_URL}/deletepaintings`, paintings)
    }

    async createPainting(painting) {
        const data = {name: painting.name, artistid:painting.author, museumid: painting.museum}
        console.log(data);
        return axios.post(`${API_URL}/paintings`, data);
    }
// -------------Users
    retrieveAllUsers(page, limit) {
        return axios.get(`${API_URL}/users`);
    }

    updateUser(user) {
        user.email = Utils.getEmail();
        console.log(user, 'user');
        return axios.put(`${API_URL}/users/${user.id}`, user);
    }

    retrieveUser(id) {
        return axios.get(`${API_URL}/users/${id}`)
    }

    deleteUsers(users) {
        return axios.post(`${API_URL}/deleteusers`, users)
    }

    async createUser(user) {
        return axios.post(`${API_URL}/users`, user);
    }


    async retrieveMuseumsAndArtist(artistId, museumId) {
        console.log(artistId, museumId)
        const artists = (await axios.get(`${API_URL}/artists/all`)).data;
        const museums = (await axios.get(`${API_URL}/museums/all`)).data;
        const artistData = artists.find(artist => +artist.id === +artistId);
        const museumData = museums.find(museum => +museum.id === +museumId);
        const data = {artist: artistData.name, museum: museumData.name};
        return data;
    }
}
function showError(msg)
{
    store.dispatch(alertActions.error(msg))
}

axios.interceptors.request.use(
    config => {
        store.dispatch(alertActions.clear())
        let token = Utils.getToken();
        if (token)
            config.headers.Authorization = token;
        return config;
    },
    error => {
        showError(error.message)
        return Promise.reject(error);
    }
)

axios.interceptors.response.use( undefined,
    error => {
    if (error.response && error.response.status && [401, 403].indexOf(error.response.status) !== -1)
        showError("Ошибка авторизации")
    else if (error.response && error.response.data && error.response.data.message)
        showError(error.response.data.message)
    else showError(error.message)
    return Promise.reject(error)
    })



export default new BackendService()