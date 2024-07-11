import axios from "axios";
import { useDispatch, useSelector} from "react-redux";
const axios = axios.create({
  baseURL: "http://127.0.0.1:8000/api",
  // baseURL:

});
  axios.interceptors.request.use((config) => {
  const token = localStorage.getItem("ACCESS_TOKEN");
  config.headers.Authorization = `Bearer ${token}`;

  return config;
});



axios.interceptors.response.use(
  (response) => {
    return response;
  },
  (error) => {
    try {
      const { response } = error;
      if (response.status === 401) {
        //    401 Unauthorized;
        localStorage.removeItem("ACCESS_TOKEN");
      }
      if (response.status === 405) {
        alert("Method Not Allowed");
      }
      return response;
    } catch (e) {
      console.error(e);
    }
    throw error;
  }
);

export default axios;