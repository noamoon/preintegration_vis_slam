%class SmartProjectionParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SmartProjectionParams()
%
%-------Methods-------
%setDegeneracyMode(DegeneracyMode degMode) : returns void
%setDynamicOutlierRejectionThreshold(bool dynOutRejectionThreshold) : returns void
%setEnableEPI(bool enableEPI) : returns void
%setLandmarkDistanceThreshold(bool landmarkDistanceThreshold) : returns void
%setLinearizationMode(LinearizationMode linMode) : returns void
%setRankTolerance(double rankTol) : returns void
%
classdef SmartProjectionParams < handle
  properties
    ptr_gtsamSmartProjectionParams = 0
  end
  methods
    function obj = SmartProjectionParams(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2850, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2851);
      else
        error('Arguments do not match any overload of gtsam.SmartProjectionParams constructor');
      end
      obj.ptr_gtsamSmartProjectionParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2852, obj.ptr_gtsamSmartProjectionParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = setDegeneracyMode(this, varargin)
      % SETDEGENERACYMODE usage: setDegeneracyMode(DegeneracyMode degMode) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.DegeneracyMode')
        gtsam_wrapper(2853, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SmartProjectionParams.setDegeneracyMode');
    end

    function varargout = setDynamicOutlierRejectionThreshold(this, varargin)
      % SETDYNAMICOUTLIERREJECTIONTHRESHOLD usage: setDynamicOutlierRejectionThreshold(bool dynOutRejectionThreshold) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(2854, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SmartProjectionParams.setDynamicOutlierRejectionThreshold');
    end

    function varargout = setEnableEPI(this, varargin)
      % SETENABLEEPI usage: setEnableEPI(bool enableEPI) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(2855, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SmartProjectionParams.setEnableEPI');
    end

    function varargout = setLandmarkDistanceThreshold(this, varargin)
      % SETLANDMARKDISTANCETHRESHOLD usage: setLandmarkDistanceThreshold(bool landmarkDistanceThreshold) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(2856, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SmartProjectionParams.setLandmarkDistanceThreshold');
    end

    function varargout = setLinearizationMode(this, varargin)
      % SETLINEARIZATIONMODE usage: setLinearizationMode(LinearizationMode linMode) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.LinearizationMode')
        gtsam_wrapper(2857, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SmartProjectionParams.setLinearizationMode');
    end

    function varargout = setRankTolerance(this, varargin)
      % SETRANKTOLERANCE usage: setRankTolerance(double rankTol) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(2858, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SmartProjectionParams.setRankTolerance');
    end

  end

  methods(Static = true)
  end
end
