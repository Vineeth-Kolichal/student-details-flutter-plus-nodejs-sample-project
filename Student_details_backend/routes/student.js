import express from 'express';
import { getstudents,addStudent,updateStudent,deleteStudent} from '../controllers/student-controller.js';


const router=express.Router();

router.get('/',getstudents);

router.post('/add',addStudent);

router.put('/update/:id',updateStudent);

router.delete('/delete/:id',deleteStudent);

export default router;