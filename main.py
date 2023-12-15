import multiprocessing
import uvicorn
from fastapi import FastAPI
 
app = FastAPI()
 
@app.get("/")
def root():
    return {"hello": "world"}
 
if __name__ == '__main__':
    multiprocessing.freeze_support()
    uvicorn.run(app, host="0.0.0.0", port=8000, reload=False, workers=1)