%class Scenario, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%acceleration_b(double t) : returns Vector
%acceleration_n(double t) : returns Vector
%navState(double t) : returns gtsam::NavState
%omega_b(double t) : returns Vector
%pose(double t) : returns gtsam::Pose3
%rotation(double t) : returns gtsam::Rot3
%velocity_b(double t) : returns Vector
%velocity_n(double t) : returns Vector
%
classdef Scenario < handle
  properties
    ptr_gtsamScenario = 0
  end
  methods
    function obj = Scenario(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3452, varargin{2});
        end
        gtsam_wrapper(3451, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.Scenario constructor');
      end
      obj.ptr_gtsamScenario = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3453, obj.ptr_gtsamScenario);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = acceleration_b(this, varargin)
      % ACCELERATION_B usage: acceleration_b(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3454, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Scenario.acceleration_b');
    end

    function varargout = acceleration_n(this, varargin)
      % ACCELERATION_N usage: acceleration_n(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3455, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Scenario.acceleration_n');
    end

    function varargout = navState(this, varargin)
      % NAVSTATE usage: navState(double t) : returns gtsam.NavState
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3456, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Scenario.navState');
    end

    function varargout = omega_b(this, varargin)
      % OMEGA_B usage: omega_b(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3457, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Scenario.omega_b');
    end

    function varargout = pose(this, varargin)
      % POSE usage: pose(double t) : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3458, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Scenario.pose');
    end

    function varargout = rotation(this, varargin)
      % ROTATION usage: rotation(double t) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3459, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Scenario.rotation');
    end

    function varargout = velocity_b(this, varargin)
      % VELOCITY_B usage: velocity_b(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3460, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Scenario.velocity_b');
    end

    function varargout = velocity_n(this, varargin)
      % VELOCITY_N usage: velocity_n(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3461, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Scenario.velocity_n');
    end

  end

  methods(Static = true)
  end
end
