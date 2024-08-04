import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Helmet from '../Helmet/Helmet';
import CommonSection from '../UI/CommonSection';

const Brands = () => {
    const [popularBrand, setPopularBrand] = useState(null);
  
    useEffect(() => {
      const fetchPopularBrand = async () => {
        try {
          // const response = await axios.get('/all/brands');
          const response = await axios.get('http://127.0.0.1:8000/api/product/top/brand');
          // console.log(response); // Ensure data is logged correctly
          setPopularBrand(response.data);
        } catch (error) {
          console.error('Error fetching data: ', error);
        }
      };  
  
      fetchPopularBrand();
    }, []); // Empty dependency array means this effect runs only once
  
    return (
      <Helmet title='All Brands'>
        <CommonSection title={'All Brands '}/>
        <div className='container'>
          <div className='row mt-3'>
            <div className="col-md-12">
              <div className="p-4 bg-white my-2 rounded border">
                <h1> All Brands </h1>
              </div>
            </div>
          </div>
  
          <div className='row'> 
            <div className='col-md-2'>
              <div className="card">
                {popularBrand ? (
                  console.log(popularBrand),
                  <div>
                    <h3>{popularBrand.name}</h3>
                    {/* Render other data as needed */}
                  </div>
                ) : (
                  <p>Loading...</p>
                )}
              </div>
            </div>
  
            {/* Render additional brands if needed */}
  
          </div>
        </div>
      </Helmet>
    );
};
  
export default Brands;
