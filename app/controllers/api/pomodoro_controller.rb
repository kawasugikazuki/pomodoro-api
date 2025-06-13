# app/controllers/api/pomodoro_controller.rb
class Api::PomodoroController < ApplicationController
  
  # GET /api/pomodoro
  def index
    render json: { 
      message: "Hello Pomodoro Timer!",
      status: "API is working",
      timestamp: Time.current
    }
  end
  
  # POST /api/pomodoro/start
  def start
    session_type = params[:session_type] || 'work'
    duration = params[:duration] || 25
    
    render json: {
      message: "Pomodoro session started!",
      session_type: session_type,
      duration: duration,
      start_time: Time.current
    }
  end
  
  # POST /api/pomodoro/complete
  def complete
    render json: {
      message: "Pomodoro session completed!",
      completed_at: Time.current
    }
  end
  
end