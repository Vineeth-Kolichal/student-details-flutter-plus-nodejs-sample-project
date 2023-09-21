import StudentModel from "../models/student-model.js";

export  const getstudents=async(req,res)=>{
   try {

    const students=await StudentModel.find();
    res.status(200).json({status:200,students:students});
    
   } catch (error) {
    res.status(500).json({status:500,message: "Error while retrieving data",error:error.message});
    
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
        res.status(201).json({message:"Successfully added",data:saveStudent});
        
    } catch (error) {
        res.status(400).json({message:"error while adding student",error:error.message});
        
    }

}

export const updateStudent=async (req,res)=>{
    try {
       const student=await StudentModel.findById(req.params.id);
       student.name=req.body.name;
       student.age=req.body.age;
       await student.save();
        res.status(200).json({message:"Successfully updated"});
    } catch (error) {
        res.status(400).json({message:"not updated",error:error.message});
        
    }
}

export const deleteStudent=async (req,res)=>{
    try {
        const id= req.params.id;
        const student=await StudentModel.findById(id);
        if(!student){
            res.status(404).json({message:"student not found"});
        }else{
           await StudentModel.deleteOne({_id:id});
           res.status(200).json({message:"successfully deleted"});
        }
        
    } catch (error) {
        res.status(500).json({message:"error while deleting student",error:error})
    }
   
}

