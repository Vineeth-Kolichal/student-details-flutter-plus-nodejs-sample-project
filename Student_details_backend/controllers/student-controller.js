import StudentModel from "../models/student-model.js";

export  const getstudents=async(req,res)=>{
   try {

    const students=await StudentModel.find();
    res.status(200).json({students:students});
    
   } catch (error) {
    res.status(500).json({message: "Error while retrieving data",error:error.message});
    
   }
}

export const addStudent=async (req,res)=>{
    
    try {
        const { name, age}=req.body;
        const studentModel=new StudentModel({
            name,
            age
        });
        const saveStudent= await studentModel.save();
        res.status(201).json({message:"Successfully added"});
        
    } catch (error) {
        res.status(400).json({message:"error while adding student",error:error.message});
        
    }
    console.log(req.body);

}

export const updateStudent=async (req,res)=>{
   
res.status(200).json({message:"Successfully updated"});
}

export const deleteStudent=async (req,res)=>{
   
res.status(201).json({message:"Successfully deleted"});
}

