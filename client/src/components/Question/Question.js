import React, { useState, useEffect } from "react";
import { Select } from "../../components/Core";
import Axios from 'axios';

const Question = (id_question = null) => {
  const new_id_question = Object.values(id_question);
  const data_id_question = new_id_question[0];
  const [fields, setFields] = useState([{ answer_m: '', answer_l: '' }]);

  useEffect(()=>{
    sendQuestionList();
  }, []);

  const sendQuestionList = () => {
  Axios.get(`http://localhost:3001/sub/get?id_question=${data_id_question}`).then((response)=>{
      const subQuestion = response.data;
      setFields(subQuestion);
      }).catch(error => console.error(`Error: ${error}`));
  };

  const handleChangeM = (i, e) => {
    const _answer_m = [...fields];
    _answer_m[i].answer_m = e;
    setFields(_answer_m);
  }
  const handleChangeL = (i, e) => {
    const _fields = [...fields];
    _fields[i].answer_l = e;
    setFields(_fields);
  }

  const handleSubmit = () => {
    console.log(fields);
    Axios.post('http://localhost:3001/sub/insert', {
      question: fields,
    });
  }

  const defaultTypes = [
    { value: "", label: "" },
    { value: "D", label: "D" },
    { value: "I", label: "I" },
    { value: "S", label: "S" },
    { value: "C", label: "C" },
    { value: "*", label: "*" },
  ];

  return (
      <>
      {fields.map((field, i) => {
        return(
            <div className="row" key={i}>
              <div className="col-md-3">
                <Select
                  options={defaultTypes}
                  className="form-control pl-0 arrow-3 w-100 font-size-4 d-flex align-items-center w-100 "
                  border={false} onChange={e => handleChangeM(i, e.value)}
                  autoFocus={true} />
              </div>
            <div className="col">
            <p className="font-size-3 text-default-color line-height-2">
            {field.question}{field.id}
            </p>
            </div>
            <div className="col-md-3">
                <Select
                  options={defaultTypes}
                  className="form-control pl-0 arrow-3 w-100 font-size-4 d-flex align-items-center w-100 "
                  border={false} border={false} onChange={e => handleChangeL(i, e.value)}
                />
            </div>
            
          </div>
        )
      })}
      <button onClick={handleSubmit}>Submit</button>
    </>
  );
};

export default Question;