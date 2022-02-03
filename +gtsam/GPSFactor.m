%class GPSFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GPSFactor(size_t key, Point3 gpsIn, Base model)
%
%-------Methods-------
%equals(GPSFactor expected, double tol) : returns bool
%measurementIn() : returns Point3
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef GPSFactor < gtsam.NonlinearFactor
  properties
    ptr_gtsamGPSFactor = 0
  end
  methods
    function obj = GPSFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3434, varargin{2});
        end
        base_ptr = gtsam_wrapper(3433, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3435, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.GPSFactor constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGPSFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3436, obj.ptr_gtsamGPSFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GPSFactor expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GPSFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3437, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GPSFactor.equals');
    end

    function varargout = measurementIn(this, varargin)
      % MEASUREMENTIN usage: measurementIn() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3438, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GPSFactor.measurementIn');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(3439, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3440, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3441, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GPSFactor.print');
    end

  end

  methods(Static = true)
  end
end
