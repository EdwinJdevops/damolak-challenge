from fastapi import FastAPI, HTTPException
from fastapi.responses import JSONResponse
import os
import platform
import time

app = FastAPI(
    title="Damolak DevOps Challenge API",
    description="Production-ready microservice — Chibuike Obi",
    version="1.0.0",
)

START_TIME = time.time()


@app.get("/health")
def health_check():
    return {
        "status": "healthy",
        "uptime_seconds": round(time.time() - START_TIME, 2),
        "environment": os.getenv("APP_ENV", "production"),
    }


@app.get("/info")
def system_info():
    return {
        "app": "damolak-api",
        "version": "1.0.0",
        "region": os.getenv("AWS_REGION", "unknown"),
        "hostname": platform.node(),
        "python_version": platform.python_version(),
    }


@app.get("/")
def root():
    return JSONResponse(
        content={
            "message": "API is live",
            "docs": "/docs",
            "health": "/health",
        }
    )
