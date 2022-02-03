%class ISAM2GaussNewtonParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ISAM2GaussNewtonParams()
%
%-------Methods-------
%getWildfireThreshold() : returns double
%print(string s) : returns void
%setWildfireThreshold(double wildfireThreshold) : returns void
%
classdef ISAM2GaussNewtonParams < handle
  properties
    ptr_gtsamISAM2GaussNewtonParams = 0
  end
  methods
    function obj = ISAM2GaussNewtonParams(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1943, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1944);
      else
        error('Arguments do not match any overload of gtsam.ISAM2GaussNewtonParams constructor');
      end
      obj.ptr_gtsamISAM2GaussNewtonParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1945, obj.ptr_gtsamISAM2GaussNewtonParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getWildfireThreshold(this, varargin)
      % GETWILDFIRETHRESHOLD usage: getWildfireThreshold() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1946, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2GaussNewtonParams.getWildfireThreshold');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1947, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1948, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2GaussNewtonParams.print');
    end

    function varargout = setWildfireThreshold(this, varargin)
      % SETWILDFIRETHRESHOLD usage: setWildfireThreshold(double wildfireThreshold) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1949, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2GaussNewtonParams.setWildfireThreshold');
    end

  end

  methods(Static = true)
  end
end
