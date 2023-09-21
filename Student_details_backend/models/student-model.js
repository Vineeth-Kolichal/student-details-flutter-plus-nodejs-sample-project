import mongoose from "mongoose";
const { Schema } = mongoose

const studentSchema = new Schema({
    name: {
        type: String,
        required: true,
    },
    age: {
        type: Number,
        required: true,
    }
}, {
    timestamps: true
});

export default mongoose.model("StudentModel",studentSchema);