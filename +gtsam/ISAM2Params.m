%class ISAM2Params, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ISAM2Params()
%
%-------Methods-------
%getFactorization() : returns string
%getRelinearizeSkip() : returns int
%isCacheLinearizedFactors() : returns bool
%isEnableDetailedResults() : returns bool
%isEnablePartialRelinearizationCheck() : returns bool
%isEnableRelinearization() : returns bool
%isEvaluateNonlinearError() : returns bool
%print(string s) : returns void
%setCacheLinearizedFactors(bool cacheLinearizedFactors) : returns void
%setEnableDetailedResults(bool enableDetailedResults) : returns void
%setEnablePartialRelinearizationCheck(bool enablePartialRelinearizationCheck) : returns void
%setEnableRelinearization(bool enableRelinearization) : returns void
%setEvaluateNonlinearError(bool evaluateNonlinearError) : returns void
%setFactorization(string factorization) : returns void
%setOptimizationParams(ISAM2GaussNewtonParams gauss_newton__params) : returns void
%setOptimizationParams(ISAM2DoglegParams dogleg_params) : returns void
%setRelinearizeSkip(int relinearizeSkip) : returns void
%setRelinearizeThreshold(double threshold) : returns void
%setRelinearizeThreshold(ISAM2ThresholdMap threshold_map) : returns void
%
classdef ISAM2Params < handle
  properties
    ptr_gtsamISAM2Params = 0
  end
  methods
    function obj = ISAM2Params(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1975, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1976);
      else
        error('Arguments do not match any overload of gtsam.ISAM2Params constructor');
      end
      obj.ptr_gtsamISAM2Params = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1977, obj.ptr_gtsamISAM2Params);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = getFactorization(this, varargin)
      % GETFACTORIZATION usage: getFactorization() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1978, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.getFactorization');
    end

    function varargout = getRelinearizeSkip(this, varargin)
      % GETRELINEARIZESKIP usage: getRelinearizeSkip() : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1979, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.getRelinearizeSkip');
    end

    function varargout = isCacheLinearizedFactors(this, varargin)
      % ISCACHELINEARIZEDFACTORS usage: isCacheLinearizedFactors() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1980, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.isCacheLinearizedFactors');
    end

    function varargout = isEnableDetailedResults(this, varargin)
      % ISENABLEDETAILEDRESULTS usage: isEnableDetailedResults() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1981, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.isEnableDetailedResults');
    end

    function varargout = isEnablePartialRelinearizationCheck(this, varargin)
      % ISENABLEPARTIALRELINEARIZATIONCHECK usage: isEnablePartialRelinearizationCheck() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1982, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.isEnablePartialRelinearizationCheck');
    end

    function varargout = isEnableRelinearization(this, varargin)
      % ISENABLERELINEARIZATION usage: isEnableRelinearization() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1983, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.isEnableRelinearization');
    end

    function varargout = isEvaluateNonlinearError(this, varargin)
      % ISEVALUATENONLINEARERROR usage: isEvaluateNonlinearError() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1984, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.isEvaluateNonlinearError');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1985, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1986, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.print');
    end

    function varargout = setCacheLinearizedFactors(this, varargin)
      % SETCACHELINEARIZEDFACTORS usage: setCacheLinearizedFactors(bool cacheLinearizedFactors) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(1987, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setCacheLinearizedFactors');
    end

    function varargout = setEnableDetailedResults(this, varargin)
      % SETENABLEDETAILEDRESULTS usage: setEnableDetailedResults(bool enableDetailedResults) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(1988, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setEnableDetailedResults');
    end

    function varargout = setEnablePartialRelinearizationCheck(this, varargin)
      % SETENABLEPARTIALRELINEARIZATIONCHECK usage: setEnablePartialRelinearizationCheck(bool enablePartialRelinearizationCheck) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(1989, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setEnablePartialRelinearizationCheck');
    end

    function varargout = setEnableRelinearization(this, varargin)
      % SETENABLERELINEARIZATION usage: setEnableRelinearization(bool enableRelinearization) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(1990, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setEnableRelinearization');
    end

    function varargout = setEvaluateNonlinearError(this, varargin)
      % SETEVALUATENONLINEARERROR usage: setEvaluateNonlinearError(bool evaluateNonlinearError) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(1991, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setEvaluateNonlinearError');
    end

    function varargout = setFactorization(this, varargin)
      % SETFACTORIZATION usage: setFactorization(string factorization) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1992, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setFactorization');
    end

    function varargout = setOptimizationParams(this, varargin)
      % SETOPTIMIZATIONPARAMS usage: setOptimizationParams(ISAM2GaussNewtonParams gauss_newton__params) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.ISAM2GaussNewtonParams')
        gtsam_wrapper(1993, this, varargin{:});
        return
      end
      % SETOPTIMIZATIONPARAMS usage: setOptimizationParams(ISAM2DoglegParams dogleg_params) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.ISAM2DoglegParams')
        gtsam_wrapper(1994, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setOptimizationParams');
    end

    function varargout = setRelinearizeSkip(this, varargin)
      % SETRELINEARIZESKIP usage: setRelinearizeSkip(int relinearizeSkip) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(1995, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setRelinearizeSkip');
    end

    function varargout = setRelinearizeThreshold(this, varargin)
      % SETRELINEARIZETHRESHOLD usage: setRelinearizeThreshold(double threshold) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(1996, this, varargin{:});
        return
      end
      % SETRELINEARIZETHRESHOLD usage: setRelinearizeThreshold(ISAM2ThresholdMap threshold_map) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.ISAM2ThresholdMap')
        gtsam_wrapper(1997, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ISAM2Params.setRelinearizeThreshold');
    end

  end

  methods(Static = true)
  end
end
