%class Quaternion, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%coeffs() : returns Vector
%w() : returns double
%x() : returns double
%y() : returns double
%z() : returns double
%
classdef Quaternion < handle
  properties
    ptr_gtsamQuaternion = 0
  end
  methods
    function obj = Quaternion(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(555, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.Quaternion constructor');
      end
      obj.ptr_gtsamQuaternion = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(556, obj.ptr_gtsamQuaternion);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = coeffs(this, varargin)
      % COEFFS usage: coeffs() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(557, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Quaternion.coeffs');
    end

    function varargout = w(this, varargin)
      % W usage: w() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(558, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Quaternion.w');
    end

    function varargout = x(this, varargin)
      % X usage: x() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(559, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Quaternion.x');
    end

    function varargout = y(this, varargin)
      % Y usage: y() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(560, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Quaternion.y');
    end

    function varargout = z(this, varargin)
      % Z usage: z() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(561, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Quaternion.z');
    end

  end

  methods(Static = true)
  end
end
