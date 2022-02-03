%class LevenbergMarquardtParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%LevenbergMarquardtParams()
%
%-------Methods-------
%getDiagonalDamping() : returns bool
%getLogFile() : returns string
%getUseFixedLambdaFactor() : returns bool
%getVerbosityLM() : returns string
%getlambdaFactor() : returns double
%getlambdaInitial() : returns double
%getlambdaLowerBound() : returns double
%getlambdaUpperBound() : returns double
%setDiagonalDamping(bool flag) : returns void
%setLogFile(string s) : returns void
%setUseFixedLambdaFactor(bool flag) : returns void
%setVerbosityLM(string s) : returns void
%setlambdaFactor(double value) : returns void
%setlambdaInitial(double value) : returns void
%setlambdaLowerBound(double value) : returns void
%setlambdaUpperBound(double value) : returns void
%
%-------Static Methods-------
%CeresDefaults() : returns gtsam::LevenbergMarquardtParams
%EnsureHasOrdering(LevenbergMarquardtParams params, NonlinearFactorGraph graph) : returns gtsam::LevenbergMarquardtParams
%LegacyDefaults() : returns gtsam::LevenbergMarquardtParams
%ReplaceOrdering(LevenbergMarquardtParams params, Ordering ordering) : returns gtsam::LevenbergMarquardtParams
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns LevenbergMarquardtParams
%
classdef LevenbergMarquardtParams < gtsam.NonlinearOptimizerParams
  properties
    ptr_gtsamLevenbergMarquardtParams = 0
  end
  methods
    function obj = LevenbergMarquardtParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1883, varargin{2});
        end
        base_ptr = gtsam_wrapper(1882, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1884);
      else
        error('Arguments do not match any overload of gtsam.LevenbergMarquardtParams constructor');
      end
      obj = obj@gtsam.NonlinearOptimizerParams(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamLevenbergMarquardtParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1885, obj.ptr_gtsamLevenbergMarquardtParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getDiagonalDamping(this, varargin)
      % GETDIAGONALDAMPING usage: getDiagonalDamping() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1886, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.getDiagonalDamping');
    end

    function varargout = getLogFile(this, varargin)
      % GETLOGFILE usage: getLogFile() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1887, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.getLogFile');
    end

    function varargout = getUseFixedLambdaFactor(this, varargin)
      % GETUSEFIXEDLAMBDAFACTOR usage: getUseFixedLambdaFactor() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1888, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.getUseFixedLambdaFactor');
    end

    function varargout = getVerbosityLM(this, varargin)
      % GETVERBOSITYLM usage: getVerbosityLM() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1889, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.getVerbosityLM');
    end

    function varargout = getlambdaFactor(this, varargin)
      % GETLAMBDAFACTOR usage: getlambdaFactor() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1890, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.getlambdaFactor');
    end

    function varargout = getlambdaInitial(this, varargin)
      % GETLAMBDAINITIAL usage: getlambdaInitial() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1891, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.getlambdaInitial');
    end

    function varargout = getlambdaLowerBound(this, varargin)
      % GETLAMBDALOWERBOUND usage: getlambdaLowerBound() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1892, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.getlambdaLowerBound');
    end

    function varargout = getlambdaUpperBound(this, varargin)
      % GETLAMBDAUPPERBOUND usage: getlambdaUpperBound() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1893, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.getlambdaUpperBound');
    end

    function varargout = setDiagonalDamping(this, varargin)
      % SETDIAGONALDAMPING usage: setDiagonalDamping(bool flag) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(1894, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.setDiagonalDamping');
    end

    function varargout = setLogFile(this, varargin)
      % SETLOGFILE usage: setLogFile(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1895, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.setLogFile');
    end

    function varargout = setUseFixedLambdaFactor(this, varargin)
      % SETUSEFIXEDLAMBDAFACTOR usage: setUseFixedLambdaFactor(bool flag) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(1896, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.setUseFixedLambdaFactor');
    end

    function varargout = setVerbosityLM(this, varargin)
      % SETVERBOSITYLM usage: setVerbosityLM(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1897, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.setVerbosityLM');
    end

    function varargout = setlambdaFactor(this, varargin)
      % SETLAMBDAFACTOR usage: setlambdaFactor(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1898, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.setlambdaFactor');
    end

    function varargout = setlambdaInitial(this, varargin)
      % SETLAMBDAINITIAL usage: setlambdaInitial(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1899, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.setlambdaInitial');
    end

    function varargout = setlambdaLowerBound(this, varargin)
      % SETLAMBDALOWERBOUND usage: setlambdaLowerBound(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1900, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.setlambdaLowerBound');
    end

    function varargout = setlambdaUpperBound(this, varargin)
      % SETLAMBDAUPPERBOUND usage: setlambdaUpperBound(double value) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1901, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LevenbergMarquardtParams.setlambdaUpperBound');
    end

  end

  methods(Static = true)
    function varargout = CeresDefaults(varargin)
      % CERESDEFAULTS usage: CeresDefaults() : returns gtsam.LevenbergMarquardtParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1902, varargin{:});
        return
      end

      error('Arguments do not match any overload of function LevenbergMarquardtParams.CeresDefaults');
    end

    function varargout = EnsureHasOrdering(varargin)
      % ENSUREHASORDERING usage: EnsureHasOrdering(LevenbergMarquardtParams params, NonlinearFactorGraph graph) : returns gtsam.LevenbergMarquardtParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.LevenbergMarquardtParams') && isa(varargin{2},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(1903, varargin{:});
        return
      end

      error('Arguments do not match any overload of function LevenbergMarquardtParams.EnsureHasOrdering');
    end

    function varargout = LegacyDefaults(varargin)
      % LEGACYDEFAULTS usage: LegacyDefaults() : returns gtsam.LevenbergMarquardtParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1904, varargin{:});
        return
      end

      error('Arguments do not match any overload of function LevenbergMarquardtParams.LegacyDefaults');
    end

    function varargout = ReplaceOrdering(varargin)
      % REPLACEORDERING usage: ReplaceOrdering(LevenbergMarquardtParams params, Ordering ordering) : returns gtsam.LevenbergMarquardtParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.LevenbergMarquardtParams') && isa(varargin{2},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1905, varargin{:});
        return
      end

      error('Arguments do not match any overload of function LevenbergMarquardtParams.ReplaceOrdering');
    end

  end
end
