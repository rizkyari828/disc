import React, { useState, useEffect } from "react";
import Link from "next/link";
import PageWrapper from "../../components/PageWrapper";
import ProfileSidebar from "../../components/ProfileSidebar";
import Question from "../../components/Question/";

import Axios from 'axios';

const Sheet = () => {

  const [questionList, setQuestionList] = useState([]);

  useEffect(()=>{
    getQuestion();
  }, []);

  const getQuestion = () => {
      Axios.get('http://localhost:3001/question/get').then((response)=>{
      const allQuestion = response.data;
      setQuestionList(allQuestion);
    });
  };

  const submitReview = () => {
    console.log(insertM);
  };

  return (
    <>
      <PageWrapper headerConfig={{ button: "profile" }}>
        <div className="bg-default-2 pt-19 pt-lg-22 pb-7 pb-lg-23">
          <div className="container">
            {/* <!-- back Button --> */}
            <div className="row">
              <div className="col-12 mt-13 dark-mode-texts">
                <div className="mb-9">
                  <Link href="/#">
                    <a className="d-flex align-items-center ml-4">
                      <i className="icon icon-small-left bg-white circle-40 mr-5 font-size-7 text-black font-weight-bold shadow-8"></i>
                      <span className="text-uppercase font-size-3 font-weight-bold text-gray">
                        Back
                      </span>
                    </a>
                  </Link>
                </div>
              </div>
            </div>
            {/* <!-- back Button End --> */}
            <div className="row">
              <div className="col-12 col-xl-4 col-lg-4 col-md-12 col-xs-10 mb-11 mb-lg-0">
                <ProfileSidebar className="mr-0 mr-xl-17" />
              </div>
              <div className="col-12 col-xl-8 col-lg-8">
                {/* <!-- Top Start --> */}
                <div className="mb-5">
                  <h4 className="font-size-7 mb-9">TEST DISC</h4>
                  <div className="row justify-content-center">
                      {/* <!-- Single Question --> */}
                      { questionList.map((val,index) => {
                          return(
                            <div className="col-lg-6 col-md-6 col-sm-11 mb-9" key={val.id}>
                            <div className="pt-9 px-xl-9 px-lg-7 px-7 pb-7 light-mode-texts bg-white rounded hover-shadow-3">
                            <div className="media align-items-center">
                              <div>{val.id}
                              <Question id_question={val.id}/>
                              </div>
                            </div>
                          </div>
                          </div>
                          )
                        })} 
                      
                      {/* <!-- End Single Question --> */}
                  </div>
                  <div className="form-group mb-8">
                    <button onClick={submitReview} className="btn btn-primary btn-medium w-100 rounded-5 text-uppercase">
                      Selesai{" "}
                    </button>
                  </div>
                </div>
                
              </div>
            </div>
          </div>
        </div>
      </PageWrapper>
    </>
  );
};
export default Sheet;
