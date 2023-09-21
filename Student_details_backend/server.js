import express from 'express';
import mongoose from 'mongoose';
import dotenv from 'dotenv';
import student from './routes/student.js'

dotenv.config();

const app=express();

mongoose.connect(process.env.DATABASE_URL);

const db=mongoose.connection;

db.on('error',(error)=>console.log(error));

db.once('open',()=>console.log('Connected to database'));

app.use(express.json());

app.use('/students',student);

app.listen(3000,()=> console.log('Server started'));
